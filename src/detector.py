# detector.py
# -------------------------
# Detector modulare per finestre transienti (TEA-general).
# Basato sul detector originale: mantiene intatti i pattern cmp->jcc->mem e indirect-branch,
# e introduce altre euristiche utili come base solida per estensioni successive.
#
# Interfaccia principale:
# - annotate_transient_instructions(functions, window_size=4, enabled_detectors=None)
#
# Ogni "detector" è una funzione che prende (instrs, i, window_size, n) e ritorna
# None oppure un dict {start_index, end_index, pattern, score}.
#
# L'architettura è volutamente semplice (funzioni + registro) per facilitarne la comprensione
# e l'estendibilità — ideale per un prototipo di tesi.
#
# Gabriele Giordanelli: prototipo per tesi
# -------------------------

from typing import List, Dict, Optional, Callable
from parser import Function, Instruction

# ---------------------------------------------------------------------
# Helper/utility
# ---------------------------------------------------------------------

def _strip_inline_comment(raw: str) -> str:
    return raw.split('#', 1)[0].strip()


def _is_bb_boundary(instr: Instruction) -> bool:
    """
    True se la riga è una label reale (es. LBB1_3:), usata come boundary di basic-block.
    (stesso stile di detect_cmp_jcc_mem: non attraversiamo label)
    """
    if instr.mnemonic is not None:
        return False
    raw = normalize_raw(instr.raw_line)
    return _strip_inline_comment(raw).endswith(":")


def _is_cf_boundary(instr: Instruction) -> bool:
    """True se l'istruzione è un boundary di controllo (non attraversiamo)."""
    if instr.mnemonic is None:
        return False
    mn = instr.mnemonic.lower()
    if is_unconditional_jump(instr) or is_conditional_jump(instr) or is_ret(instr):
        return True
    # anche le call spezzano il flusso: evita finestre che attraversano call
    if mn.startswith('call'):
        return True
    return False


def _is_mem_operand(op: str) -> bool:
    return '(' in op and ')' in op


def _is_stack_mem_operand(op: str) -> bool:
    """Filtro semplice: accessi diretti allo stack via %rbp/%rsp (spills/locals)."""
    if not _is_mem_operand(op):
        return False
    return ('%rbp' in op) or ('%rsp' in op) or ('%ebp' in op) or ('%esp' in op)


def _is_rip_relative_mem(op: str) -> bool:
    return _is_mem_operand(op) and ('%rip' in op)


def _get_relevant_mem_operands(instr: Instruction, include_rip: bool = False) -> List[str]:
    """
    Ritorna gli operandi memoria filtrando stack e (opzionalmente) RIP-relative.
    Questo taglia quasi tutto il rumore in attacker/main.
    """
    mems = [op for op in (instr.operands or []) if _is_mem_operand(op)]
    mems = [op for op in mems if not _is_stack_mem_operand(op)]
    if not include_rip:
        mems = [op for op in mems if not _is_rip_relative_mem(op)]
    return mems


def _mov_like_mnemonic(instr: Instruction) -> bool:
    if not instr.mnemonic:
        return False
    mn = instr.mnemonic.lower()
    return mn.startswith('mov') or mn.startswith('stos')


def _is_store_to_nonstack_mem(instr: Instruction) -> bool:
    """
    Store (AT&T): mov-like con DEST memoria (ultimo operando).
    Evita stack e %rip (GOT/global).
    """
    if not _mov_like_mnemonic(instr):
        return False
    if not instr.operands or len(instr.operands) < 2:
        return False
    dst = instr.operands[-1]
    return _is_mem_operand(dst) and not _is_stack_mem_operand(dst) and not _is_rip_relative_mem(dst)


def _is_load_from_nonstack_mem(instr: Instruction) -> bool:
    """
    Load (AT&T): mov-like con SRC memoria (primo operando).
    Evita stack e %rip (GOT/global).
    """
    if not _mov_like_mnemonic(instr):
        return False
    if not instr.operands or len(instr.operands) < 2:
        return False
    src = instr.operands[0]
    return _is_mem_operand(src) and not _is_stack_mem_operand(src) and not _is_rip_relative_mem(src)


def _base_reg_of_memop(op: str) -> Optional[str]:
    """Estrae il base register dall'addressing mode AT&T: disp(base,index,scale)."""
    if not _is_mem_operand(op):
        return None
    inside = op[op.find('(') + 1: op.find(')')]
    parts = [p.strip() for p in inside.split(',') if p.strip()]
    if not parts:
        return None
    return parts[0] if parts[0].startswith('%') else None


def _mem_operands_may_alias(store_mems: List[str], load_mems: List[str]) -> bool:
    """
    Alias euristico (più stretto del tuo): stesso base register (non stack, non rip).
    Questo elimina un sacco di falsi positivi e riduce overlap.
    """
    for so in store_mems:
        b1 = _base_reg_of_memop(so)
        if not b1 or b1 in {'%rbp', '%rsp', '%ebp', '%esp', '%rip'}:
            continue
        for lo in load_mems:
            if _base_reg_of_memop(lo) == b1:
                return True
    return False


def is_cmp_or_test(instr: Instruction) -> bool:
    """Ritorna True se l'istruzione è di tipo 'cmp' o 'test'."""
    return instr.mnemonic and instr.mnemonic.lower().startswith(('cmp', 'test'))


def is_conditional_jump(instr: Instruction) -> bool:
    """Ritorna True se l'istruzione è un jump condizionale (jcc, jne, je, ecc.) ma non jmp incondizionale."""
    if not instr.mnemonic:
        return False
    mn = instr.mnemonic.lower()
    return mn.startswith('j') and mn != 'jmp'

def is_unconditional_jump(instr) -> bool:
    """
    Ritorna True per jmp in qualsiasi variante (jmp/jmpq/jmpw).
    Non considera i call né i jcc condizionali.
    """
    m = instr.mnemonic
    if m is None:
        return False
    return m in ("jmp", "jmpq", "jmpw")


def is_ret(instr) -> bool:
    """
    Ritorna True per le istruzioni di ritorno da funzione.
    """
    m = instr.mnemonic
    if m is None:
        return False
    return m in ("ret", "retq", "lret", "lretq")


def has_memory_access(instr: Instruction) -> bool:
    """Euristica semplice: verifica se l'istruzione accede alla memoria (AT&T: presenza di parentesi negli operandi)."""
    if not instr.mnemonic or not instr.operands:
        return False
    return any('(' in op and ')' in op for op in instr.operands)


def is_indirect_branch(instr: Instruction) -> bool:
    """Ritorna True se l'istruzione è un call/jmp indiretto (operando con registro o '*')."""
    if not instr.mnemonic:
        return False
    if not instr.mnemonic.lower().startswith(('call', 'jmp')):
        return False
    # semplice euristica: operando con registro o indirizzo indiretto
    return instr.operands and ('%' in instr.operands[0] or '*' in instr.operands[0])


def normalize_raw(raw_line: str) -> str:
    """Rimuove spazi iniziali per confronti semplici."""
    return raw_line.strip()


def mark_window(instrs: List[Instruction], start: int, end: int, score: float):
    """
    Marca le istruzioni nel range [start, end] come parte di una finestra transiente.
    - Aggiorna 'is_transient_window' e 'transient_score' (prendendo il massimo se già marcata).
    - Salta label interne generate dal compilatore (.L, Ltmp, ecc.) per evitare falsi positivi.
    """
    for idx in range(start, end + 1):
        raw = normalize_raw(instrs[idx].raw_line)
        # Se si tratta di label/linee di commento generate dal compilatore, le saltiamo
        if instrs[idx].mnemonic is None and raw.startswith(("##", ".L", "L")):
            continue
        instrs[idx].is_transient_window = True
        instrs[idx].transient_score = max(instrs[idx].transient_score, float(score))


# ---------------------------------------------------------------------
# Detector: implementazione delle euristiche (plugin)
# ---------------------------------------------------------------------

def detect_cmp_jcc_mem(instrs: List[Instruction], i: int, window_size: int, n: int) -> Optional[Dict]:
    """
    Pattern 1: cmp/test -> jcc -> accesso memoria
    """
    instr = instrs[i]
    if not is_cmp_or_test(instr):
        return None

    cmp_index = i

    # cerchiamo un jump condizionale entro window_size
    jcc_index = None
    for j in range(i + 1, min(n, i + window_size)):
        raw = normalize_raw(instrs[j].raw_line)

        # fine basic block se incontriamo una label "vera"
        if instrs[j].mnemonic is None:
            # togliamo eventuale commento ("## ...") e poi guardiamo se finisce con ':'
            no_comment = raw.split('#', 1)[0].strip()
            if no_comment.endswith(":"):
                break

        # fine basic block / finestra
        if is_unconditional_jump(instrs[j]) or is_ret(instrs[j]):
            break

        if is_conditional_jump(instrs[j]):
            jcc_index = j
            break

    if jcc_index is None:
        return None

    # cerchiamo accesso memoria entro window_size dopo jcc
    last_mem_index = None
    for k in range(jcc_index + 1, min(n, jcc_index + window_size)):
        raw = normalize_raw(instrs[k].raw_line)

        # non attraversiamo label → restiamo intra-basic-block
        if instrs[k].mnemonic is None:
            no_comment = raw.split('#', 1)[0].strip()
            if no_comment.endswith(":"):
                break

        # barriera / fine basic block
        if is_unconditional_jump(instrs[k]) or is_ret(instrs[k]):
            break

        # (opzionale) potremmo fermarci anche su mfence/lfence/sfence
        # if is_serializing(instrs[k]):
        #     break

        if has_memory_access(instrs[k]):
            # print(f'Istruzione mem: {instrs[k].raw_line}')
            last_mem_index = k

    if last_mem_index is None:
        return None

    start = cmp_index
    end = last_mem_index

    # score euristico: puoi mantenere il tuo, basta aggiornare range
    dist_jcc = (jcc_index - cmp_index)
    dist_mem = (last_mem_index - jcc_index)
    score = 0.4 + 0.3 * (1 - dist_jcc / max(1, window_size)) \
            + 0.3 * (1 - dist_mem / max(1, window_size))
    score = round(min(score, 1.0), 2)

    mark_window(instrs, start, end, score)

    return {
        "start_index": start,
        "end_index": end,
        "pattern": "cmp+jcc+mem*",
        "score": score,
    }


def detect_indirect_branch(instrs: List[Instruction], i: int, window_size: int, n: int) -> Optional[Dict]:
    """
    Pattern 2: indirect call/jmp (utile per Spectre v2).
    Nota: per v2 è spesso più utile annotare la finestra *prima* del branch,
    perché lì viene calcolato/caricato il target (registro/memoria).
    """
    instr = instrs[i]
    if not is_indirect_branch(instr):
        return None

    # window "backward": include l'indirect branch e le istruzioni che preparano il target
    start = max(0, i - window_size)
    end = i  # includi il branch stesso, evitare di andare "dopo" è più sensato per call/jmp

    # se nella window ci sono label, lo start sarà l'istruzione successiva ad essa
    # (poiché duplicandola il programma non sarebbe compilabile)
    for n in range(end, start - 1, -1):
        m = instrs[n].raw_line or ""

        # Caso label come mnemonic ("LBB0_3:" o "LBB0_3")
        if m.startswith(("LBB", ".LBB")):
            start = n + 1
            break

    # scoring leggermente più alto rispetto al default: trigger forte per Spectre v2
    mnem = (instr.mnemonic or "").lower()
    score = 0.70 if mnem.startswith("call") else 0.55  # call* tipico del PoC, jmp* un filo meno comune

    mark_window(instrs, start, end, score)

    return {
        "start_index": start,
        "end_index": end,
        "pattern": "indirect-branch",
        "score": score
    }


def detect_store_then_load(instrs: List[Instruction], i: int, window_size: int, n: int) -> Optional[Dict]:
    """
    Pattern: store -> load (Spectre v4 / Speculative Store Bypass)

    Fix principali:
    - store = DEST memoria (ultimo operando) (prima: qualunque mem operand)
    - load  = SRC memoria (primo operando)
    - non attraversa label/jump/ret/call (evita duplicazione LBB...:)
    - greedy non-overlap: se già marcata, non parte da lì ✅
    """
    instr = instrs[i]
    if not instr.mnemonic:
        return None

    # Greedy non-overlap: evita finestre sovrapposte
    if getattr(instr, "is_transient_window", False):
        return None

    if not _is_store_to_nonstack_mem(instr):
        return None

    store_mems = _get_relevant_mem_operands(instr, include_rip=False)
    if not store_mems:
        return None

    # cerca il PRIMO load successivo entro window_size, restando nello stesso basic-block
    for j in range(i + 1, min(n, i + window_size)):
        nxt = instrs[j]

        if _is_bb_boundary(nxt) or _is_cf_boundary(nxt):
            break

        if not _is_load_from_nonstack_mem(nxt):
            continue

        load_mems = _get_relevant_mem_operands(nxt, include_rip=False)
        if load_mems and _mem_operands_may_alias(store_mems, load_mems):
            score = 0.6
            mark_window(instrs, i, j, score)
            return {"start_index": i, "end_index": j, "pattern": "store->load", "score": score}

    return None


def detect_unbalanced_ret(instrs: List[Instruction], i: int, window_size: int, n: int) -> Optional[Dict]:
    """
    Pattern semplice per individuare potenziali problemi RSB/Return (Spectre-RSB).
    - Strategia: se troviamo un 'ret' e nelle vicinanze ci sono più 'call' non bilanciate,
      o se la funzione ha molte chiamate con 'ret' distante, segnaliamo un possibile problema.
    - Questo è un detector molto grezzo, ma serve come base per estensioni successive.
    """
    instr = instrs[i]
    if not instr.mnemonic or instr.mnemonic.lower() != 'retq' and instr.mnemonic.lower() != 'ret':
        return None

    # conteggiamo call nella finestra circostante
    start = max(0, i - window_size)
    end = min(n - 1, i + window_size)
    calls = sum(1 for k in range(start, end + 1) if instrs[k].mnemonic and instrs[k].mnemonic.lower().startswith('call'))
    # se ci sono molte call vicine a questo ret, assegniamo un punteggio (euristica)
    if calls >= 3:
        score = 0.5
        mark_window(instrs, start, end, score)
        return {"start_index": start, "end_index": end, "pattern": "rsb_like_ret_cluster", "score": score}
    return None


def detect_early_load_after_store(instrs: List[Instruction], i: int, window_size: int, n: int) -> Optional[Dict]:
    """
    Pattern che cerca load immediati dopo store (potenziale speculative store bypass).
    Leggermente diverso da detect_store_then_load perché qui cerchiamo load che precede
    un store su stesso indirizzo — possibile SSB (carichi speculativi che usano vecchi valori).
    Questa è un'euristica semplice (inverse ordering).
    """
    instr = instrs[i]
    if not instr.mnemonic:
        return None

    if instr.mnemonic.lower().startswith(('mov', 'movl', 'movq')) and has_memory_access(instr):
        # cerchiamo uno store successivo che potrebbe essere sullo stesso indirizzo entro window_size
        for j in range(i + 1, min(n, i + window_size)):
            mn_j = instrs[j].mnemonic.lower() if instrs[j].mnemonic else ''
            if (mn_j.startswith('mov') or 'store' in mn_j or mn_j.startswith('stos')) and has_memory_access(instrs[j]):
                # semplificato: se condividono lo stesso registro base textually
                mem_ops_load = [op for op in instr.operands if '(' in op]
                mem_ops_store = [op for op in instrs[j].operands if '(' in op]
                for lo in mem_ops_load:
                    for so in mem_ops_store:
                        for reg in ['%rax', '%rbx', '%rcx', '%rdx', '%rsi', '%rdi', '%rbp', '%rsp', '%r8', '%r9', '%r10', '%r11', '%r12', '%r13', '%r14', '%r15']:
                            if reg in lo and reg in so:
                                score = 0.55
                                start = i
                                end = j
                                mark_window(instrs, start, end, score)
                                return {"start_index": start, "end_index": end, "pattern": "early_load_before_store", "score": score}
    return None


# ---------------------------------------------------------------------
# Registro dei detector: qui aggiungi o rimuovi detector disponibili
# Ordine importante: detector più specifici prima, più generici dopo.
# ---------------------------------------------------------------------
# Ogni entry è una callable detector(instrs, i, window_size, n) -> Optional[dict]
REGISTERED_DETECTORS: List[Callable[[List[Instruction], int, int, int], Optional[Dict]]] = [
    detect_cmp_jcc_mem,
    detect_indirect_branch,
    detect_store_then_load,
    #detect_early_load_after_store,
    #detect_unbalanced_ret,
]

# ---------------------------------------------------------------------
# Funzione orchestratrice principale
# ---------------------------------------------------------------------

def annotate_transient_instructions(functions: List[Function],
                                    window_size: int = 7,
                                    enabled_detectors: Optional[List[str]] = None) -> List[Dict]:
    """
    Detector modulare per finestre transient.
    - functions: lista di oggetti Function (dal parser asm_io)
    - window_size: parametro euristico usato da molti detector (numero istruzioni da esaminare)
    - enabled_detectors: lista di nomi di detector da abilitare (default: tutti in REGISTERED_DETECTORS)
    Restituisce una lista di risultati per funzione:
      { "function": name, "function_score": float, "windows": [ {start_index, end_index, pattern, score}, ... ] }
    """

    # Mappiamo i detector abilitati per nome (comodo per disabilitare durante test)
    name_to_detector = {det.__name__: det for det in REGISTERED_DETECTORS}
    if enabled_detectors is None:
        active_detectors = list(name_to_detector.values())
    else:
        active_detectors = [name_to_detector[name] for name in enabled_detectors if name in name_to_detector]

    results = []

    for func in functions:
        # Ignora se funzione fittizia di trailing directives
        if func.name == "__trailing_directives__":
            continue

        instrs = func.instructions
        n = len(instrs)
        windows: List[Dict] = []

        # Inizializza attributi (Compatibilità: manteniamo comportamento precedente)
        for instr in instrs:
            # se gli attributi esistono già (classe Instruction), li lasciamo; altrimenti li impostiamo
            if not hasattr(instr, 'is_transient_window'):
                instr.is_transient_window = False
            if not hasattr(instr, 'transient_score'):
                instr.transient_score = 0.0

        # scansione istruzione-per-istruzione e invocazione detectors
        for i in range(n):
            # per ogni detector attivo, proviamo a vedere se rileva una finestra qui
            for det in active_detectors:
                try:
                    window = det(instrs, i, window_size, n)
                except Exception as e:
                    # Non vogliamo che un detector difettoso blocchi l'intero processo:
                    # loggare l'errore (qui semplicemente skippiamo) — in futuro sostituire con logging.
                    # print(f"[detector error] {det.__name__} at {func.name}:{i} -> {e}")
                    window = None
                if window:
                    windows.append(window)
                    # se non vuoi che altri detector marchino la stessa istruzione, break qui
                    break

        # score globale: massimo tra i transient_score delle istruzioni
        func_score = max((instr.transient_score for instr in instrs), default=0.0)

        results.append({
            "function": func.name,
            "function_score": round(func_score, 2),
            "windows": windows
        })

    return results


# ---------------------------------------------------------------------
# HELPERS DI SVILUPPO / DEBUG (facoltativi)
# ---------------------------------------------------------------------

def get_windows_text_report(function: Function) -> str:
    """
    Costruisce un report testuale delle finestre trovate in una funzione (utile per debug).
    """
    lines = []
    instrs = function.instructions
    for i, instr in enumerate(instrs):
        flag = "!!!" if getattr(instr, 'is_transient_window', False) else "   "
        score = getattr(instr, 'transient_score', 0.0)
        lines.append(f"{i:04d} {flag} score={score:.2f}    {instr.raw_line}")
    return "\n".join(lines)