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
import re

# ---------------------------------------------------------------------
# Helper/utility
# ---------------------------------------------------------------------

# ---------------------------------------------------------------------
# Meltdown helpers (minimi) — riusano già i tuoi helper per BB/CF/mem ops
# ---------------------------------------------------------------------

_MELTDOWN_GPR_ALIAS = {
    # low 8-bit
    '%al': '%rax', '%ah': '%rax', '%bl': '%rbx', '%bh': '%rbx', '%cl': '%rcx', '%ch': '%rcx', '%dl': '%rdx', '%dh': '%rdx',
    # 16-bit
    '%ax': '%rax', '%bx': '%rbx', '%cx': '%rcx', '%dx': '%rdx',
    '%si': '%rsi', '%di': '%rdi', '%bp': '%rbp', '%sp': '%rsp',
    # 32-bit legacy
    '%eax': '%rax', '%ebx': '%rbx', '%ecx': '%rcx', '%edx': '%rdx',
    '%esi': '%rsi', '%edi': '%rdi', '%ebp': '%rbp', '%esp': '%rsp',
    # 8-bit special
    '%sil': '%rsi', '%dil': '%rdi', '%bpl': '%rbp', '%spl': '%rsp',
}

_MELTDOWN_REG_RE = re.compile(r'%[A-Za-z0-9]+')


def _meltdown_norm_gpr(reg: str) -> Optional[str]:
    """
    Normalizza registri GPR x86-64: %eax/%al -> %rax, %r8d -> %r8, ecc.
    Ritorna None per non-GPR (xmm/ymm/zmm/segment/...).
    """
    if not reg or not reg.startswith('%'):
        return None
    r = reg.lower().strip()

    # escludi non-GPR comuni
    if r.startswith(('%xmm', '%ymm', '%zmm', '%mm', '%st')):
        return None
    if r in {'%cs', '%ds', '%es', '%fs', '%gs', '%ss'}:
        return None

    if r in _MELTDOWN_GPR_ALIAS:
        return _MELTDOWN_GPR_ALIAS[r]

    # r8..r15 and subregisters: r8, r8d, r8w, r8b
    m = re.fullmatch(r'%r(1[0-5]|[8-9])([dwb])?', r)
    if m:
        return f"%r{m.group(1)}"

    # already 64-bit GPRs
    if r in {'%rax', '%rbx', '%rcx', '%rdx', '%rsi', '%rdi', '%rbp', '%rsp'}:
        return r

    return None


def _meltdown_extract_gprs(text: str) -> List[str]:
    """Estrae registri GPR (normalizzati) da una stringa (operando AT&T)."""
    regs: List[str] = []
    for tok in _MELTDOWN_REG_RE.findall(text or ''):
        nr = _meltdown_norm_gpr(tok)
        if nr:
            regs.append(nr)
    return regs


def _meltdown_dst_gpr(instr: Instruction) -> Optional[str]:
    """
    Registro scritto (euristico AT&T):
    - 2+ operandi: ultimo operando
    - 1 operando: quello (RMW tipo inc/dec/not/neg)
    """
    if not instr.mnemonic or not instr.operands:
        return None
    op = instr.operands[-1] if len(instr.operands) >= 2 else instr.operands[0]
    return _meltdown_norm_gpr(op) if op.startswith('%') else None


def _meltdown_src_gprs(instr: Instruction, dst_norm: Optional[str]) -> set:
    """Stima registri GPR letti (euristico, sufficiente per finestre corte)."""
    ops = instr.operands or []
    if not ops:
        return set()

    # AT&T: di solito src..., dst (ultimo è dst). Con 1 op è spesso RMW (src=dst).
    src_ops = ops if len(ops) == 1 else ops[:-1]

    src = set()
    for op in src_ops:
        src.update(_meltdown_extract_gprs(op))

    mn = (instr.mnemonic or '').lower()

    # read-modify-write: il dst viene anche letto
    if dst_norm and mn.startswith((
        'add', 'sub', 'adc', 'sbb', 'and', 'or', 'xor', 'shl', 'sal', 'shr', 'sar',
        'rol', 'ror', 'rcl', 'rcr', 'inc', 'dec', 'neg', 'not', 'imul'
    )):
        src.add(dst_norm)

    return src


def _meltdown_taint_step(tainted: set, instr: Instruction) -> set:
    """
    Propagazione taint GPR semplice:
    - se dst dipende da un registro tainted -> dst diventa tainted
    - se mov/lea sovrascrive dst senza dipendere da tainted -> kill dst
    - gestisce xor reg,reg come zeroing idiom -> kill reg
    """
    if not instr.mnemonic:
        return tainted

    mn = instr.mnemonic.lower()
    dst = _meltdown_dst_gpr(instr)

    # xor %rX, %rX  => zeroing
    if mn.startswith('xor') and len(instr.operands or []) == 2:
        r1 = _meltdown_norm_gpr(instr.operands[0]) if instr.operands[0].startswith('%') else None
        r2 = _meltdown_norm_gpr(instr.operands[1]) if instr.operands[1].startswith('%') else None
        if r1 and r2 and r1 == r2:
            tainted.discard(r2)
            return tainted

    if not dst:
        return tainted

    srcs = _meltdown_src_gprs(instr, dst)
    reads_tainted = bool(srcs & tainted)

    # mov/lea che sovrascrivono dst senza dipendere da tainted => kill
    if mn.startswith(('mov', 'lea')) and not reads_tainted:
        tainted.discard(dst)
        return tainted

    if reads_tainted:
        tainted.add(dst)

    return tainted


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
# Detector: implementazione delle euristiche
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


def detect_meltdown_faulting_load(instrs: List[Instruction], i: int, window_size: int, n: int) -> Optional[Dict]:
    """
    Pattern Meltdown-like (generico):
      1) load da memoria potenzialmente faulting (non-stack, non-RIP)  [usa _is_load_from_nonstack_mem]
      2) entro una breve finestra, accesso a memoria data-dependent (gadget di side-channel)
         [usa _get_relevant_mem_operands + taint su registri]

    NOTE:
    - Staticamente non puoi sapere se il load faulta davvero: segnaliamo candidati.
    - Non attraversiamo label (basic-block boundary) e non attraversiamo call/ret/jmp incondizionale.
      Permettiamo jcc (molti PoC hanno loop/guard con branch condizionali).
    """
    instr = instrs[i]
    if not instr.mnemonic:
        return None

    # Greedy non-overlap
    if getattr(instr, "is_transient_window", False):
        return None

    # anchor: load "interessante"
    if not _is_load_from_nonstack_mem(instr):
        return None

    dst = _meltdown_dst_gpr(instr)
    if not dst:
        return None

    tainted = {dst}

    # hint (non obbligatori, alzano solo score)
    saw_page_stride = False   # es. shl $12, reg o *4096
    saw_cache_ops = False     # clflush / rdtsc / fences
    saw_tsx = False           # xbegin/xend/xabort

    # contesto TSX poco prima
    for k in range(max(0, i - 10), i):
        mk = (instrs[k].mnemonic or '').lower()
        if mk.startswith('xbegin'):
            saw_tsx = True
            break

    end_limit = min(n, i + window_size + 1)

    for j in range(i + 1, end_limit):
        nxt = instrs[j]

        # non attraversiamo label "vere"
        if _is_bb_boundary(nxt):
            break

        mn = (nxt.mnemonic or '').lower()

        # non attraversiamo call/ret/jmp incondizionale (ma permettiamo jcc)
        if is_unconditional_jump(nxt) or is_ret(nxt) or mn.startswith('call'):
            break

        # cache/tsx hints
        if mn in {'clflush', 'clflushopt', 'clwb', 'rdtsc', 'rdtscp', 'mfence', 'lfence', 'sfence'}:
            saw_cache_ops = True
        if mn.startswith(('xend', 'xabort')):
            saw_tsx = True

        # stride hints (non obbligatori)
        if mn.startswith('and') and len(nxt.operands or []) >= 2:
            imm = nxt.operands[0]
            d2 = _meltdown_dst_gpr(nxt)
            if d2 in tainted and imm.startswith('$') and ('0xff' in imm.lower() or imm == '$255'):
                saw_page_stride = True

        if mn.startswith(('shl', 'sal')) and len(nxt.operands or []) >= 2:
            imm = nxt.operands[0]
            d2 = _meltdown_dst_gpr(nxt)
            if d2 in tainted and imm.startswith('$'):
                low = imm.lower()
                if low in {'$0xc', '$12'} or '0xc' in low:
                    saw_page_stride = True

        if mn.startswith('imul') and any(('4096' in op) or ('0x1000' in op.lower()) for op in (nxt.operands or [])):
            d2 = _meltdown_dst_gpr(nxt)
            if d2 in tainted:
                saw_page_stride = True

        # taint propagation
        tainted = _meltdown_taint_step(tainted, nxt)

        # dependent memory access? (riusa helper già presente per filtrare stack/rip)
        mem_ops = _get_relevant_mem_operands(nxt, include_rip=False)
        if not mem_ops:
            continue

        regs_in_mem = set()
        for mo in mem_ops:
            regs_in_mem.update(_meltdown_extract_gprs(mo))

        if regs_in_mem & tainted:
            score = 0.55
            if saw_page_stride:
                score += 0.15
            if saw_cache_ops:
                score += 0.05
            if saw_tsx:
                score += 0.10
            score = round(min(score, 1.0), 2)

            mark_window(instrs, i, j, score)
            return {
                "start_index": i,
                "end_index": j,
                "pattern": "meltdown: faulting-load -> dependent-mem",
                "score": score,
            }

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
    detect_meltdown_faulting_load,
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