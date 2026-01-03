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
    end = i  # includi il branch stesso; evitare di andare "dopo" è più sensato per call/jmp

    # scoring leggermente più alto rispetto al default: è un trigger forte per Spectre v2
    mnem = (instr.mnemonic or "").lower()
    score = 0.60 if mnem.startswith("call") else 0.55  # call* tipico del PoC, jmp* un filo meno comune

    mark_window(instrs, start, end, score)

    return {
        "start_index": start,
        "end_index": end,
        "pattern": "indirect-branch",
        "score": score
    }


def detect_store_then_load(instrs: List[Instruction], i: int, window_size: int, n: int) -> Optional[Dict]:
    """
    Pattern: store -> load su (potenzialmente) stesso indirizzo entro poche istruzioni.
    Questa euristica può catturare casi di store-to-load forwarding / SSB-like windows.
    Implementazione: se troviamo una store (mov to mem) e successivamente un load da memoria che
    usa lo stesso base/index (semplice confronto testuale degli operandi), la segnaliamo.
    Nota: è un'euristica semplice, potrebbe generare falsi positivi, servirà poi alias analysis.
    """
    instr = instrs[i]
    if not instr.mnemonic:
        return None

    # riconsideriamo 'store' come istruzione con una parentesi nei primi operandi e destinazione memoria
    # Semplice check testuale: un'istruzione che contiene "(" nell'ultimo operando e 'mov' o 'stos' ecc.
    mn = instr.mnemonic.lower()
    if not (mn.startswith('mov') or 'store' in mn or mn.startswith('stos')):
        return None
    if not has_memory_access(instr):
        return None

    store_operands = instr.operands
    # cerchiamo un load successivo entro window_size
    for j in range(i + 1, min(n, i + window_size)):
        if instrs[j].mnemonic and has_memory_access(instrs[j]):
            # confronto testuale semplificato degli operandi: se condividono la stessa base/index substring
            # (es. (%rax), (%rax,%rcx,1) -> consideriamo potenzialmente aliasing)
            mem_ops_store = [op for op in store_operands if '(' in op]
            mem_ops_load = [op for op in instrs[j].operands if '(' in op]
            for so in mem_ops_store:
                for lo in mem_ops_load:
                    # check molto semplice: stessa register base presente
                    # (analisi più sofisticata richiederebbe parsing degli addressing modes)
                    for reg in ['%rax', '%rbx', '%rcx', '%rdx', '%rsi', '%rdi', '%rbp', '%rsp', '%r8', '%r9', '%r10', '%r11', '%r12', '%r13', '%r14', '%r15']:
                        if reg in so and reg in lo:
                            # abbiamo una potenziale store->load sullo stesso registro base
                            score = 0.6
                            start = i
                            end = j
                            mark_window(instrs, start, end, score)
                            return {"start_index": start, "end_index": end, "pattern": "store->load", "score": score}
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
    #detect_store_then_load,
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
