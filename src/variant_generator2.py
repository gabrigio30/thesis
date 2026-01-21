# ==============================================================
# variant_generator.py
# --------------------------------------------------------------
# Generatore di varianti "inline" per finestre transienti (TEA).
#
# Strategia:
#  - Per ogni finestra individuata dal detector, genera N varianti
#    (la prima è sempre quella originale, le altre sono trasformate).
#  - Inserisce direttamente nel codice assembly, in corrispondenza
#    della finestra, un blocco di selezione randomica che sceglie
#    quale variante eseguire a runtime.
#  - Ogni variante termina con un salto verso un'etichetta di
#    continuazione che riporta il flusso esattamente alla prima
#    istruzione successiva alla finestra originale.


import random
from copy import deepcopy
from parser import Instruction, Function
from detector import _base_reg_of_memop
import re

# ==============================================================
# FUNZIONI HELPER
# ==============================================================


# ==============================================================
# Retpoline out-of-line (thunk condiviso)
# ==============================================================

# insieme dei registri per cui dobbiamo emettere un thunk condiviso
_RETPOLINE_OOL_REGS = set()

def _regname_no_pct(r: str) -> str:
    return (r or "").strip().lstrip('%')

def _retpoline_ool_label_for_reg(r: str) -> str:
    # Label locale (file-scope) usabile da tutto il TU senza esportarla
    return f".Lgg_retpoline_{_regname_no_pct(r)}"

def _emit_retpoline_ool_thunks(functions):
    """Emette una sola volta (in fondo al file) i thunk per i registri richiesti."""
    global _RETPOLINE_OOL_REGS
    if not _RETPOLINE_OOL_REGS:
        return functions

    # Inseriamo prima delle trailing directives (se presenti) per non spostarle
    insert_at = len(functions)
    for idx, f in enumerate(functions):
        if getattr(f, 'name', None) == "__trailing_directives__":
            insert_at = idx
            break

    thunk_func = Function("__gg_retpoline_thunks")
    thunk_func.directives = ["\t.text", "\t.p2align\t4,,15"]
    thunk_func.instructions = [Instruction("## Shared retpoline thunks (auto-generated)")]

    # ordine stabile per output riproducibile
    for r in sorted(_RETPOLINE_OOL_REGS):
        lab = _retpoline_ool_label_for_reg(r)
        cap = f"{lab}_cap"
        setup = f"{lab}_setup"

        thunk_func.instructions.append(Instruction(""))
        thunk_func.instructions.append(Instruction(f"{lab}:"))
        thunk_func.instructions.append(Instruction(f"    callq   {setup}", "callq", [setup]))
        thunk_func.instructions.append(Instruction(f"{cap}:"))
        thunk_func.instructions.append(Instruction("    pause", "pause", []))
        thunk_func.instructions.append(Instruction("    lfence", "lfence", []))
        thunk_func.instructions.append(Instruction(f"    jmp     {cap}", "jmp", [cap]))
        thunk_func.instructions.append(Instruction(f"{setup}:"))
        thunk_func.instructions.append(Instruction(f"    movq    {r}, (%rsp)", "movq", [r, "(%rsp)"]))
        thunk_func.instructions.append(Instruction("    ret", "ret", []))

        # mark come strutturali per evitare qualsiasi trasformazione futura
        for ins in thunk_func.instructions[-9:]:
            ins.structural_tag = True

    functions = functions[:insert_at] + [thunk_func] + functions[insert_at:]
    _RETPOLINE_OOL_REGS = set()
    return functions



# Tutti i registri generali a 64 bit che ci interessano
ALL_GPRS = [
    "%rax", "%rbx", "%rcx", "%rdx",
    "%rsi", "%rdi", "%rbp", "%rsp",
    "%r8", "%r9", "%r10", "%r11",
    "%r12", "%r13", "%r14", "%r15",
]

# Registri caller-saved che preferiamo usare come temporanei.
# NOTA: lascio fuori rax/rcx/rdx perché li uso già nel selettore random
CALLER_SAVED_PREFS = ["%r10", "%r11", "%r9", "%r8"]


def regs_in_operand(op: str):
    """
    Restituisce l'insieme dei registri generali che compaiono in un operando.
    Esempi di operandi: "%rax", "(%rdi,%rcx,4)", "8(%r10)".
    """
    regs = set()
    for r in ALL_GPRS:
        if r in op:
            regs.add(r)
    return regs


def compute_safe_temps_for_function(func):
    """
    Calcola, per una funzione, quali registri temporanei possiamo usare
    in modo molto conservativo.

    Strategia:
    - Consideriamo "sicuri" solo i caller-saved in CALLER_SAVED_PREFS.
    - Un registro è considerato "safe" solo se NON compare mai in nessun
      operando di nessuna istruzione della funzione.
      In questo modo siamo ragionevolmente sicuri che il compilatore
      non lo stia usando per nulla.

    Se la lista restituita è vuota → per quella funzione non applichiamo
    trasformazioni che richiedono registri temporanei.
    """
    used_regs = set()

    for ins in func.instructions:
        # Saltiamo direttive e linee non-istruzione
        if ins.mnemonic is None:
            continue
        if not ins.operands:
            continue
        for op in ins.operands:
            used_regs |= regs_in_operand(op)

    safe_temps = [r for r in CALLER_SAVED_PREFS if r not in used_regs]
    return safe_temps


def reg_sets_for_mov(ins):
    """
    Calcola (defs, uses) per istruzioni di tipo mov* senza accesso a memoria.

    Assunzioni molto conservative:
    - Consideriamo solo mov* con operandi puramente di registro (niente parentesi).
    - In sintassi AT&T: sorgente è il primo operando, destinazione l'ultimo.
    - Usiamo solo i registri generali (ignora immediati, ecc.).
    """
    if ins.mnemonic is None:
        return set(), set()

    mnem = ins.mnemonic.lower()
    if not mnem.startswith("mov"):
        return set(), set()

    # Niente accessi a memoria: se c'è '(' in un operando, lasciamo stare
    if any("(" in op for op in (ins.operands or [])):
        return set(), set()

    if not ins.operands:
        return set(), set()

    # Operandi in AT&T: src, dst
    src = ins.operands[0]
    dst = ins.operands[-1]

    uses = regs_in_operand(src)
    defs = regs_in_operand(dst)

    return defs, uses


def _labelify(func_name: str) -> str:
    """Rimuove eventuale underscore iniziale (es. '_victim_function' -> 'victim_function')."""
    return func_name.lstrip("_")


def make_variant_label(func_name: str, win_idx: int, var_idx: int) -> str:
    """Genera il nome etichetta per una specifica variante."""
    base = _labelify(func_name)
    return f".L{base}_win{win_idx}_var{var_idx}:"


def make_continue_label(func_name: str, win_idx: int) -> str:
    """Genera l'etichetta di continuazione dopo la finestra."""
    base = _labelify(func_name)
    return f".L{base}_win{win_idx}_continue:"


def _is_conditional_jump_mnemonic(m: str) -> bool:
    """Ritorna True se la mnemonica è un jump condizionale (jcc)."""
    if not m:
        return False
    m = m.lower()
    if not m.startswith("j"):
        return False
    # escludiamo jump incondizionato
    return m not in ("jmp", "jmpq", "jmpl")


def _inverse_jcc_cc(jcc: str) -> str:
    """
    Dato un jump condizionale (es. 'jae'), ritorna il *condition code*
    inverso (senza il prefisso 'j'), da usare con cmov.

    Esempi:
      - jae  (>= unsigned)  -> b   (< unsigned)
      - je                 -> ne
      - jge (>= signed)    -> l   (< signed)

    Gestiamo le condizioni più comuni che ci aspettiamo nel pattern
    cmp/test -> jcc -> mem (tipico bounds-check / Spectre v1).
    """
    jcc = (jcc or "").lower()
    inv = {
        # unsigned
        "ja":  "be",
        "jae": "b",
        "jb":  "ae",
        "jbe": "a",

        # signed
        "jg":  "le",
        "jge": "l",
        "jl":  "ge",
        "jle": "g",

        # equality
        "je":  "ne",
        "jne": "e",
        "jz":  "nz",
        "jnz": "z",

        # carry/borrow
        "jc":  "nc",
        "jnc": "c",
    }
    return inv.get(jcc, "")


def _parse_index_reg_from_mem_operand(op: str) -> str:
    """
    Estrae (se presente) il registro *index* da un operando memoria AT&T.

    Esempi:
      - "8(%rdi,%rcx,4)" -> "%rcx"
      - "(%r12,%r8)"     -> "%r8"
      - "16(%rbp)"       -> ""     (nessun index)
      - "foo(%rip)"      -> ""     (RIP-relative)
    """
    if "(" not in op or ")" not in op:
        return ""
    inside = op.split("(", 1)[1].rsplit(")", 1)[0]
    parts = [p.strip() for p in inside.split(",")]
    if len(parts) < 2:
        return ""
    idx = parts[1]
    if idx.startswith("%") and idx in ALL_GPRS:
        return idx
    return ""


def _rewrite_mem_operand_index(op: str, new_index: str) -> str:
    """
    Ritorna una versione di 'op' dove il registro index viene impostato a
    'new_index'. Se l'operando non ha index (es. '8(%rax)' o '(%rax)'),
    lo aggiunge. Mantiene displacement/base/scale invariati.

    Esempi:
      - '8(%rdi,%rcx,4)' + %r10 -> '8(%rdi,%r10,4)'
      - '(%rax)'         + %r10 -> '(%rax,%r10)'
    """
    if '(' not in op or ')' not in op:
        return op
    # non tocchiamo RIP-relative
    if '%rip' in op:
        return op

    prefix, rest = op.split('(', 1)
    inside, suffix = rest.rsplit(')', 1)
    parts = [p.strip() for p in inside.split(',')]
    if len(parts) < 1:
        return op

    # base deve essere un registro valido
    base = parts[0]
    if not (base.startswith('%') and base in ALL_GPRS):
        return op

    # aggiungi o riscrivi index
    if len(parts) == 1:
        parts = [base, new_index]
    else:
        parts[1] = new_index

    new_inside = ','.join(parts)
    return f"{prefix}({new_inside}){suffix}"


# ==============================================================
# Helper: padding stack per il selector (evita clobber di red-zone locals)
# ==============================================================
_SELECTOR_STACK_PAD = 32  # multiplo di 16; sufficiente per allontanare i push dai locals -8/-16

_RE_NEG_RBP = re.compile(r"-\d+\(%rbp\)")

def _function_has_stack_frame_alloc(func, scan_limit: int = 64) -> bool:
    """True se nel prologo c'e' un'allocazione/realign su %rsp."""
    for ins in func.instructions[:scan_limit]:
        if ins.mnemonic is None:
            raw = (ins.raw_line or '').strip()
            if raw.endswith(':'):
                break
            continue

        m = ins.mnemonic.lower()
        ops = ins.operands or []

        # frame allocation tipica: subq $imm, %rsp
        if m in ('subq', 'sub') and len(ops) == 2 and ops[-1] == '%rsp':
            return True

        # realign tipico: andq $-16, %rsp
        if m in ('andq', 'and') and len(ops) == 2 and ops[-1] == '%rsp':
            return True

    return False


def _function_uses_redzone_rbp_locals(func, scan_limit: int = 256) -> bool:
    """True se troviamo accessi a locals via offset negativo su %rbp (es. -8(%rbp))."""
    for ins in func.instructions[:scan_limit]:
        if ins.mnemonic is None:
            continue
        for op in (ins.operands or []):
            if _RE_NEG_RBP.search(op):
                return True
    return False


def _selector_needs_stack_padding(func) -> bool:
    """Padding necessario se usa red-zone locals e non alloca frame su %rsp."""
    return _function_uses_redzone_rbp_locals(func) and not _function_has_stack_frame_alloc(func)


def _window_touches_rsp(window_instrs) -> bool:
    """
    Extra safety: se la finestra usa %rsp esplicitamente (addressing su stack),
    spostare %rsp cambierebbe il significato.
    """
    for ins in window_instrs:
        if ins.mnemonic is None:
            continue
        # mnemoniche stack-sensitive
        m = ins.mnemonic.lower()
        if m.startswith("push") or m.startswith("pop") or m.startswith("call") or m.startswith("ret"):
            return True
        # operandi che referenziano %rsp
        for op in (ins.operands or []):
            if "%rsp" in op:
                return True
    return False


def _is_mem_operand(op: str) -> bool:
    return op is not None and "(" in op and ")" in op

def _is_mov_like(ins: Instruction) -> bool:
    if ins is None or ins.mnemonic is None:
        return False
    return ins.mnemonic.lower().startswith("mov")

def _is_store_mov(ins: Instruction) -> bool:
    # AT&T: mov SRC, DST  => store se DST è memoria (ultimo operando)
    if not _is_mov_like(ins):
        return False
    ops = ins.operands or []
    return len(ops) >= 2 and _is_mem_operand(ops[-1])

def _is_load_mov(ins: Instruction) -> bool:
    # AT&T: mov SRC, DST  => load se SRC è memoria (primo operando)
    if not _is_mov_like(ins):
        return False
    ops = ins.operands or []
    return len(ops) >= 2 and _is_mem_operand(ops[0])

def _alias_by_shared_regs(store_dst: str, load_src: str) -> bool:
    """
    Alias euristico “in stile detector” ma riusando regs_in_operand():
    se i due operandi memoria condividono almeno un registro (esclusi rbp/rsp),
    li consideriamo potenzialmente alias.
    """
    s = regs_in_operand(store_dst) - {"%rbp", "%rsp"}
    l = regs_in_operand(load_src)  - {"%rbp", "%rsp"}
    return len(s & l) > 0


# ==============================================================
# Trasformazioni disponibili
# ==============================================================

def transform_index_masking_light(instrs, safe_temps):
    """
    Trasformazione "AIH/SLH light" *senza fence*.

    Obiettivo:
      - In finestre del tipo cmp/test -> jcc -> accesso memoria indicizzato,
        rendiamo innocuo l'accesso nel caso in cui la CPU speculi lungo il
        fall-through quando in realtà avrebbe dovuto prendere il salto.

    Come:
      1) Identifichiamo un memory operand indicizzato: (..., %idx, scale)
         e verifichiamo che %idx sia correlato al registro confrontato nel cmp/test.
      2) Subito dopo il jcc inseriamo:
           xorq   %tmp, %tmp          # tmp = 0
           cmov<INV> %idx, %tmp       # tmp = idx solo se la condizione del fall-through è vera
         dove <INV> è la condizione inversa del jcc (perché vogliamo "vero" quando NON salta).
      3) Riscriviamo gli operandi memoria: usiamo %tmp al posto di %idx.

    Risultato:
      - Percorso corretto: tmp = idx => l'accesso rimane equivalente.
      - Caso pericoloso (mispredict / speculazione sbagliata): tmp resta 0 => accesso su indirizzo "safe".

    NOTE:
      - Questa trasformazione è efficace soprattutto contro Spectre v1.
      - È conservativa: se non trova un match robusto (cmp+jcc+mem indicizzato correlato), non fa nulla.
      - Richiede un registro temporaneo "safe" (safe_temps) per non clobberare registri live.
    """
    out = [deepcopy(i) for i in instrs]

    if not safe_temps or len(safe_temps) < 2:
        return out

    # 1) Trova il primo cmp/test
    cmp_idx = None
    for idx, ins in enumerate(out):
        m = (ins.mnemonic or "").lower()
        if m.startswith("cmp") or m.startswith("test"):
            cmp_idx = idx
            break
    if cmp_idx is None:
        return out

    # 2) Trova il primo jcc dopo il cmp/test
    jcc_idx = None
    jcc_mn = ""
    for idx in range(cmp_idx + 1, len(out)):
        m = (out[idx].mnemonic or "").lower()
        if _is_conditional_jump_mnemonic(m):
            jcc_idx = idx
            jcc_mn = m
            break
        # Se esco dal basic block, smetto
        if m in ("jmp", "jmpq", "jmpl") or m.startswith("ret"):
            break
    if jcc_idx is None:
        return out

    inv_cc = _inverse_jcc_cc(jcc_mn)
    if not inv_cc:
        # Condizione non riconosciuta -> non rischiamo.
        return out

    # 3) Registi coinvolti nel cmp/test
    cmp_ins = out[cmp_idx]
    cmp_regs = set()
    dst_regs = set()
    if cmp_ins.operands:
        for op in cmp_ins.operands:
            cmp_regs |= regs_in_operand(op)
        # In AT&T: cmp SRC, DST -> i flag descrivono DST - SRC
        if len(cmp_ins.operands) >= 2:
            dst_regs = regs_in_operand(cmp_ins.operands[1])

    # 4) Cerca accessi memoria indicizzati dopo il jcc che usano l'indice confrontato
    patches = []  # (instr_index, operand_index, idx_reg)
    for ii in range(jcc_idx + 1, len(out)):
        ins = out[ii]
        if ins.mnemonic is None or not ins.operands:
            continue
        if getattr(ins, "structural_tag", False):
            continue

        for oi, op in enumerate(ins.operands):
            op_s = op.strip()
            idx_reg = _parse_index_reg_from_mem_operand(op_s)
            if not idx_reg:
                continue

            # Conservativo: prima match col DST del cmp, altrimenti match con qualunque registro del cmp
            if (idx_reg in dst_regs) or (idx_reg in cmp_regs):
                patches.append((ii, oi, idx_reg))

    if not patches:
        return out

    chosen_idx = patches[0][2]
    patches = [(ii, oi, r) for (ii, oi, r) in patches if r == chosen_idx]
    if not patches:
        return out

    # 5) Inserisci la logica branchless subito dopo il jcc (così non tocchiamo i flag prima del salto)
    tmp = safe_temps[1]

    xor_ins = Instruction(f"    xorq    {tmp}, {tmp}", "xorq", [tmp, tmp])
    cmov_ins = Instruction(
        f"    cmov{inv_cc}  {chosen_idx}, {tmp}",
        f"cmov{inv_cc}",
        [chosen_idx, tmp],
    )

    xor_ins.structural_tag = True
    cmov_ins.structural_tag = True

    insert_at = jcc_idx + 1
    out.insert(insert_at, xor_ins)
    out.insert(insert_at + 1, cmov_ins)

    # Dopo l'inserimento, gli indici successivi slittano di +2
    def shift(i):
        return i + 2 if i >= insert_at else i

    shifted_patches = [(shift(ii), oi, r) for (ii, oi, r) in patches]

    # 6) Riscrivi operandi memoria: usa tmp come index reg
    for ii, oi, _r in shifted_patches:
        ins = out[ii]
        old_op = ins.operands[oi]
        ins.operands[oi] = _rewrite_mem_operand_index(old_op, tmp)
        ins.structural_tag = True

    return out


def transform_nop(instrs):
    """
    Inserisce un numero casuale di istruzioni NOP all’interno
    della finestra per aumentare la diversità temporale.
    """
    out = [deepcopy(i) for i in instrs]
    idx = random.randint(0, len(out))
    out.insert(idx, Instruction("    nop", "nop"))
    return out


def transform_fence_after_jcc(instrs, fence_mnemonic="lfence"):
    """
    Inserisce una o più fence (lfence di default) all'interno della finestra
    per bloccare/limitare la speculazione oltre i punti sensibili.

    - Non modifica la semantica architetturale (solo performance).
    - Heuristica:
      1) Inserisce una fence subito dopo il primo branch condizionale (jcc).
      2) Inserisce opzionalmente una seconda fence prima del primo accesso
         a memoria (operandi con parentesi).
    """
    out = [deepcopy(i) for i in instrs]

    # ---------------------------
    # 1) Fence dopo il primo jcc
    # ---------------------------
    branch_idx = None
    for idx, ins in enumerate(out):
        m = (ins.mnemonic or "").lower()
        if not m:
            continue

        # j* ma non jmp/jmpq/jmpl → branch condizionale
        if m.startswith("j") and m not in ("jmp", "jmpq", "jmpl"):
            branch_idx = idx
            break

    if branch_idx is not None and branch_idx + 1 <= len(out):
        insert_positions = [branch_idx + 1]
    else:
        # fallback: fence all'inizio della finestra
        insert_positions = [0]

    # -----------------------------------------
    # 2) Fence prima del primo accesso memoria
    # -----------------------------------------
    mem_idx = None
    for idx, ins in enumerate(out):
        # salta direttive/label
        if ins.mnemonic is None or getattr(ins, "directive", False):
            continue

        # euristica: operandi con "(" implicano indirizzamento memoria
        ops_str = ",".join(ins.operands) if ins.operands else ""
        if "(" in ops_str:
            mem_idx = idx
            break

    if mem_idx is not None and mem_idx not in insert_positions:
        insert_positions.append(mem_idx)

    # -----------------------------------------
    # 3) Inserimento effettivo delle fence
    # -----------------------------------------
    offset = 0
    for pos in sorted(insert_positions):
        fence_line = f"    {fence_mnemonic}"
        out.insert(pos + offset, Instruction(fence_line, fence_mnemonic, []))
        offset += 1

    return out


def transform_fence_between_store_load(instrs, fence_mnemonic="mfence"):
    """
    Spectre V4 / SSB: inserisce una fence *tra* uno store e la prima load successiva
    che può bypassarlo (euristica di alias).

    Inseriamo la fence IMMEDIATAMENTE PRIMA della load (equivale a "between").
    """
    out = [deepcopy(i) for i in instrs]

    # 1) trova il primo store (mov con dst memoria)
    store_idx = None
    store_dst = None
    for i, ins in enumerate(out):
        if ins.mnemonic is None or getattr(ins, "directive", False):
            continue
        if getattr(ins, "structural_tag", False):
            continue
        if _is_store_mov(ins):
            store_idx = i
            store_dst = (ins.operands or [])[-1]
            break

    if store_idx is None:
        return out

    # 2) trova la prima load successiva che aliasa euristicamente
    load_idx = None
    for j in range(store_idx + 1, len(out)):
        ins = out[j]
        if ins.mnemonic is None or getattr(ins, "directive", False):
            continue
        if _is_load_mov(ins):
            load_src = (ins.operands or [None])[0]
            if load_src and _alias_by_shared_regs(store_dst, load_src):
                load_idx = j
                break

    if load_idx is None:
        return out

    # 3) inserisci fence prima della load
    fence = Instruction(f"    {fence_mnemonic}", fence_mnemonic, [])
    fence.structural_tag = True
    out.insert(load_idx, fence)
    return out



def transform_lea_split(instrs, safe_temps):
    """
    Trasformazione strutturale: LEA-splitting dei load da memoria.

    Pattern (sintassi AT&T):
        movX   offset(base, index, scale), dst

    Diventa:
        leaq   offset(base, index, scale), tmp
        movX   (tmp), dst

    dove:
    - tmp è un registro temporaneo scelto tra i "safe_temps"
      calcolati a livello di funzione.
    - Non modifichiamo la semantica architetturale del load, ma
      aggiungiamo un'operazione in più (LEA) e cambiamo il grafo
      delle dipendenze, rendendo il gadget più "sporco".

    NOTE:
    - Non tocchiamo direttive/label.
    - Non tocchiamo istruzioni già modificate strutturalmente
      (structural_tag == True).
    - Se non abbiamo registri temporanei disponibili, la finestra
      resta invariata.
    """
    # Copia profonda della finestra, così non tocchiamo l'originale
    out = [deepcopy(i) for i in instrs]

    # Se non ci sono registri temporanei sicuri, non facciamo nulla
    if not safe_temps:
        return out

    tmp = safe_temps[0]  # scelta estremamente conservativa: usiamo sempre il primo

    for idx, ins in enumerate(out):
        # Saltiamo direttive o linee non-istruzione
        if ins.mnemonic is None or ins.directive:
            continue

        # Se questa riga è già stata modificata da una trasformazione strutturale,
        # non la tocchiamo per evitare sovrascritture pericolose.
        if getattr(ins, "structural_tag", False):
            continue

        mnem = ins.mnemonic.lower()

        # Consideriamo solo mov* (movb/movw/movl/movq/...)
        if not mnem.startswith("mov"):
            continue

        if not ins.operands or len(ins.operands) < 2:
            continue

        src = ins.operands[0]   # sorgente (AT&T)
        dst = ins.operands[-1]  # destinazione

        # Vogliamo solo load da memoria: l'operando sorgente deve avere "addressing"
        # con parentesi, es: "offset(%rdi,%rcx,4)".
        if "(" not in src:
            continue

        # Costruiamo la nuova coppia di istruzioni: LEA + MOV
        lea_instr = Instruction(
            f"    leaq    {src}, {tmp}",
            "leaq",
            [src, tmp],
        )
        # Manteniamo la stessa variante di mov (movb/movl/movq, ecc.)
        new_mov = Instruction(
            f"    {ins.mnemonic}    ({tmp}), {dst}",
            ins.mnemonic,
            [f"({tmp})", dst],
        )

        # Flagghiamo le nuove istruzioni come "strutturalmente modificate"
        lea_instr.structural_tag = True
        new_mov.structural_tag = True

        # Rimpiazziamo l'istruzione originale con le due nuove
        out[idx:idx+1] = [lea_instr, new_mov]

    return out


def transform_reorder_movs(instrs):
    """
    Trasformazione strutturale molto conservativa:
    tenta di riordinare (swap) solo coppie di istruzioni mov*
    tra registri, quando sono chiaramente indipendenti.

    Regole di sicurezza:
    - Consideriamo solo istruzioni mov* senza accesso a memoria.
    - Non tocchiamo branch/call/ret o altre cose sensibili.
    - Non tocchiamo istruzioni già modificate strutturalmente.
    - Swappiamo due mov* adiacenti solo se:
        * non usano gli stessi registri in lettura/scrittura
          (no dipendenze RAW/WAR/WAW).

    L'effetto è un leggero cambiamento nell'ordine di esecuzione
    di µops semplici, senza toccare il controllo di flusso.
    """
    out = [deepcopy(i) for i in instrs]

    i = 0
    while i < len(out) - 1:
        a = out[i]
        b = out[i + 1]

        # Saltiamo direttive/label
        if a.mnemonic is None or b.mnemonic is None:
            i += 1
            continue

        # Se una delle due è già stata modificata strutturalmente, non la tocchiamo
        if getattr(a, "structural_tag", False) or getattr(b, "structural_tag", False):
            i += 1
            continue

        # Non swappiamo se una delle due è branch/call/ret
        for ins in (a, b):
            mnem = ins.mnemonic.lower()
            if mnem.startswith("j") or mnem in ("call", "ret"):
                break
        else:
            # Arriviamo qui solo se nessuna delle due è branch/call/ret

            # Calcoliamo def/use per mov* senza memoria
            defs_a, uses_a = reg_sets_for_mov(a)
            defs_b, uses_b = reg_sets_for_mov(b)

            # Se una delle due non è un mov "valido", non swappiamo
            if (not defs_a and not uses_a) or (not defs_b and not uses_b):
                i += 1
                continue

            # Condizione di indipendenza:
            # - i registri scritti da A non devono essere letti/scritti da B
            # - i registri scritti da B non devono essere letti/scritti da A
            if (defs_a & (defs_b | uses_b)) or (defs_b & (defs_a | uses_a)):
                i += 1
                continue

            # Se siamo qui, A e B sono mov* indipendenti: le swappiamo
            out[i], out[i + 1] = out[i + 1], out[i]

            # Flagghiamo entrambe come modificate strutturalmente
            out[i].structural_tag = True
            out[i + 1].structural_tag = True

            # Avanziamo di 2 per non provare subito a riswappare la stessa coppia
            i += 2
            continue

        # Se abbiamo fatto 'break' nel for (branch/call/ret), arriviamo qui
        i += 1

    return out


# ==============================================================
# Trasformazione: Retpoline rewrite (Spectre V2 - BTI)
# ==============================================================

_RETPO_ID = 0

def transform_retpoline_rewrite(instrs, safe_temps=None):
    """
    Riscrive call/jmp indiretti (Spectre V2 - BTI) in una forma retpoline
    **out-of-line**: ogni sito diventa 2 istruzioni (materializzazione target + call/jmp
    verso un thunk condiviso) e i thunk vengono emessi una sola volta a fine file.

    Supporta:
      - call/callq/jmp/jmpq *%reg
      - call/callq/jmp/jmpq *mem o *imm (solo se safe_temps disponibile)
    """
    from detector import is_indirect_branch
    global _RETPOLINE_OOL_REGS

    out = [deepcopy(i) for i in instrs]

    def is_int_literal(s: str) -> bool:
        s = (s or "").strip().lower()
        if s.startswith("0x"):
            try:
                int(s, 16); return True
            except ValueError:
                return False
        try:
            int(s, 10); return True
        except ValueError:
            return False

    i = 0
    while i < len(out):
        ins = out[i]

        # Salta direttive/label e istruzioni già "strutturali"
        if ins is None or ins.mnemonic is None or getattr(ins, "directive", False) or getattr(ins, "structural_tag", False):
            i += 1
            continue

        if not is_indirect_branch(ins):
            i += 1
            continue

        m = (ins.mnemonic or "").lower()
        if not (m.startswith("call") or m.startswith("jmp")):
            i += 1
            continue

        if not ins.operands:
            i += 1
            continue

        op0 = ins.operands[0].strip()
        if not op0.startswith("*"):
            i += 1
            continue

        target = op0[1:].strip()

        # 1) Materializza il target in un registro (treg)
        prep = []
        treg = None

        if target in ALL_GPRS:
            treg = target
        elif target.startswith("%"):
            i += 1
            continue
        else:
            if not safe_temps:
                i += 1
                continue

            tmp = safe_temps[0]
            treg = tmp

            if is_int_literal(target):
                movabs = Instruction(f"    movabsq ${target}, {tmp}", "movabsq", [f"${target}", tmp])
                movabs.structural_tag = True
                prep.append(movabs)
            else:
                mov = Instruction(f"    movq    {target}, {tmp}", "movq", [target, tmp])
                mov.structural_tag = True
                prep.append(mov)

        if not treg:
            i += 1
            continue

        # 2) Sostituzione con call/jmp verso thunk condiviso
        lab = _retpoline_ool_label_for_reg(treg)
        _RETPOLINE_OOL_REGS.add(treg)

        seq = []
        seq.extend(prep)

        if m.startswith("jmp"):
            j = Instruction(f"    jmp     {lab}", "jmp", [lab])
            j.structural_tag = True
            seq.append(j)
        else:
            c = Instruction(f"    callq   {lab}", "callq", [lab])
            c.structural_tag = True
            seq.append(c)

        out[i:i + 1] = seq
        i += len(seq)

    return out



def transform_ssb_dependency_chain_barrier(instrs, safe_temps):
    """
    Spectre V4 / SSB: crea una dipendenza (data-dependent) dal base-reg
    dello store e la inietta nel calcolo dell'indirizzo della prima load
    successiva che può bypassarlo (euristica di alias).

    Idea:
      - dopo lo store:  movq <store_base>, <tmp>
      - prima della load: pushfq; andq $0,<tmp>; popfq   (tmp diventa 0 ma dipende da store_base)
      - riscrive il load: (%base) -> (%base,<tmp>)

    NOTE:
      - usa un registro temporaneo 'safe' (safe_temps)
      - non applica se la finestra tocca %rsp (per sicurezza)
      - non modifica i flags (li salva/ripristina)
    """
    out = [deepcopy(i) for i in instrs]

    if not safe_temps:
        return out

    # sicurezza: se la finestra tocca lo stack, evitiamo push/pop
    if _window_touches_rsp(out):
        return out

    tmp = safe_temps[0]

    # 1) trova il primo store (mov con dst memoria)
    store_idx = None
    store_dst = None
    for i, ins in enumerate(out):
        if ins.mnemonic is None or getattr(ins, 'directive', False):
            continue
        if getattr(ins, 'structural_tag', False):
            continue
        if _is_store_mov(ins):
            store_idx = i
            store_dst = (ins.operands or [])[-1]
            break

    if store_idx is None or not store_dst:
        return out

    # base reg dello store: riuso helper del detector se disponibile
    anchor = ''
    if _base_reg_of_memop is not None:
        b = _base_reg_of_memop(store_dst)
        anchor = b or ''
    if not anchor:
        regs = list(regs_in_operand(store_dst) - {'%rbp', '%rsp'})
        anchor = regs[0] if regs else ''

    if not anchor or anchor in ('%rbp', '%rsp', '%rip'):
        return out

    # 2) trova la prima load successiva che aliasa (euristica)
    load_idx = None
    load_src = None
    for j in range(store_idx + 1, len(out)):
        ins = out[j]
        if ins.mnemonic is None or getattr(ins, 'directive', False):
            continue
        if _is_load_mov(ins):
            cand_src = (ins.operands or [None])[0]
            if cand_src and _alias_by_shared_regs(store_dst, cand_src) and ('%rip' not in cand_src):
                load_idx = j
                load_src = cand_src
                break

    if load_idx is None or not load_src:
        return out

    # 3) riscrive l'operando memoria aggiungendo (o sostituendo) l'index
    new_load_src = _rewrite_mem_operand_index(load_src, tmp)
    if new_load_src == load_src:
        return out

    # 4) inserisci mov anchor -> tmp subito dopo lo store
    mv = Instruction(f'    movq    {anchor}, {tmp}', 'movq', [anchor, tmp])
    mv.structural_tag = True
    out.insert(store_idx + 1, mv)
    load_idx += 1

    # 5) prima della load: preserva flags e azzera tmp in modo data-dependent
    pushf = Instruction('    pushfq', 'pushfq', [])
    and0  = Instruction(f'    andq    $0, {tmp}', 'andq', ['$0', tmp])
    popf  = Instruction('    popfq', 'popfq', [])
    pushf.structural_tag = True
    and0.structural_tag = True
    popf.structural_tag = True

    out.insert(load_idx, pushf)
    out.insert(load_idx + 1, and0)
    out.insert(load_idx + 2, popf)

    # indice della load (spostata di +3)
    load_ins_idx = load_idx + 3
    li = out[load_ins_idx]
    if not li.operands or len(li.operands) < 2:
        return out
    li.operands[0] = new_load_src
    li.structural_tag = True
    return out




# ==============================================================
# Generatore principale di varianti
# ==============================================================

def generate_variants_for_results(functions, results,
                                  num_variants=3,
                                  same_variants=False,
                                  transformations=None,
                                  seed=None,
                                  transforms_per_variant=1,
                                  transform_weights=None
                                  ):
    """
    Integra varianti direttamente nelle istruzioni delle Function.
    Ogni finestra viene sostituita da:
      - un blocco di selezione randomica
      - tutte le varianti generate (inclusa l'originale)
      - una label di continuazione

    Parametri:
    - functions: lista di oggetti Function (dal parser)
    - results: dict {func_name: [window_dict, ...]} prodotto dal detector
               oppure lista di dict in formato:
                 { "function": name,
                   "windows": [ {start_index, end_index, ...}, ... ] }
    - num_variants: numero totale di varianti da generare (inclusa l'originale)
    - transformations: lista di funzioni di trasformazione
    - seed: seme random per riproducibilità
    - transforms_per_variant: quante trasformazioni applicare in sequenza
      per costruire ciascuna variante (esclusa la variante 0 che resta
      l'originale).
    - transform_weights: dict opzionale {funzione: peso}. I pesi
      determinano la probabilità relativa con cui ogni trasformazione
      viene scelta (non devono sommare a 1, basta che siano >0).
      Esempio:
        {
          transform_nop:         0.2,
          transform_fence:       0.3,
          transform_lea_split:   0.4,
          transform_reorder_movs:0.1,
        }
    """

    if seed is not None:
        random.seed(seed)

    # Se abbiamo solo i pesi ma non la lista esplicita, ricaviamo la lista
    if transformations is None and transform_weights is not None:
        transformations = [t for t in transform_weights.keys() if callable(t)]

    # Di default: tutte le trasformazioni disponibili, incluse le strutturali
    if transformations is None:
        transformations = [
            transform_nop,
            transform_fence_after_jcc,
            transform_lea_split,
            transform_fence_between_store_load,
            transform_reorder_movs,
            transform_index_masking_light,
            transform_retpoline_rewrite,
            transform_ssb_dependency_chain_barrier,
        ]

    # Normalizzazione: almeno 1 trasformazione per variante
    if transforms_per_variant < 1:
        transforms_per_variant = 1

    # ----------------------------------------------------------
    # Costruzione distribuzione di probabilità sulle trasformazioni
    # ----------------------------------------------------------
    if transform_weights is None:
        # Pesi uniformi se non specificato altro
        items = [(t, 1.0) for t in transformations]
    else:
        items = []
        for t in transformations:
            w = transform_weights.get(t, 0.0)
            if w > 0:
                items.append((t, float(w)))
        # Fallback: se tutti i pesi sono 0, torniamo all'uniforme
        if not items:
            items = [(t, 1.0) for t in transformations]

    transf_funcs = [t for (t, _) in items]
    cum_weights = []
    total_w = 0.0
    for _, w in items:
        total_w += w
        cum_weights.append(total_w)

    def pick_transform():
        """Estrae una trasformazione secondo i pesi configurati."""
        r = random.random() * total_w
        for t, cw in zip(transf_funcs, cum_weights):
            if r <= cw:
                return t
        return transf_funcs[-1]

    # --- Conversione compatibilità formato dei results ---
    # Se results è una lista di dict con chiave 'function',
    # lo mappiamo in un dict {func_name: windows}
    if isinstance(results, list):
        results_map = {}
        for entry in results:
            func_name = entry.get("function")
            windows = entry.get("windows", [])
            norm_windows = []
            for w in windows:
                if "start_index" in w and "end_index" in w:
                    norm_windows.append({
                        "start": w["start_index"],
                        "end": w["end_index"],
                        "pattern": w.get("pattern", ""),
                        "score": w.get("score", 0.0),
                    })
            results_map[func_name] = norm_windows
        results = results_map

    # ======================================================
    # Generazione varianti per funzione
    # ======================================================
    for func in functions:
        if func.name not in results:
            continue  # nessuna finestra in questa funzione

        func_label = _labelify(func.name)

        # Calcolo dei registri temporanei "sicuri" per LEA-splitting
        safe_temps = compute_safe_temps_for_function(func)

        # --- 1) Filtra finestre sovrapposte sugli indici ORIGINALI ---
        orig_windows = results[func.name]
        orig_windows_sorted = sorted(orig_windows, key=lambda w: w["start"])

        selected_windows = []
        last_end = -1
        for w in orig_windows_sorted:
            start = w["start"]
            end = w["end"]
            # se si sovrappone (anche solo di 1 istruzione) a una finestra già scelta, la scartiamo
            if start <= last_end:
                continue
            selected_windows.append(w)
            last_end = end

        # Andiamo dal fondo verso l'inizio così non serve nessun offset
        windows_sorted = sorted(selected_windows, key=lambda w: w["start"], reverse=True)

        # Elaboriamo ogni finestra rilevata
        for win_idx, window in enumerate(windows_sorted):
            start = window["start"]
            end = window["end"]
            instrs = func.instructions

            # Istruzioni della finestra nell'assembly originale
            window_instrs = instrs[start:end + 1]

            # ======================================================
            # 1. Generazione varianti
            # ======================================================
            variants = []

            # Variante 0: copia esatta (originale)
            variants.append([deepcopy(i) for i in window_instrs])

            # --------------------------------------------------------------------------
            # NON è necessario che le varianti che genero siano tutte diverse e uniche,
            # perché saranno comunque in posizione (PC address) diversa tra loro
            # --------------------------------------------------------------------------
            if same_variants == False:
                # Varianti successive: sequenza di N trasformazioni scelte secondo i pesi
                for _v in range(1, num_variants):
                    current = window_instrs

                    for _step in range(transforms_per_variant):
                        t = pick_transform()

                        # Trasformazioni che richiedono registri temporanei "safe"
                        if (t is transform_lea_split or t is transform_index_masking_light or
                                t is transform_retpoline_rewrite or t is transform_ssb_dependency_chain_barrier):
                            current = t(current, safe_temps)
                        else:
                            current = t(current)

                    variants.append(current)

            else:
                # Varianti successive: copie esatte dell'originale
                for _v in range(1, num_variants):
                    variants.append([deepcopy(i) for i in window_instrs])


            # ======================================================
            # 2. Costruzione del blocco di selezione dinamica
            # ======================================================
            selector_block = []

            # Salva i registri che andremo a clobberare
            selector_block.append(Instruction('## RANDOM SELECTOR BLOCK'))
            selector_block.append(Instruction("    pushq   %rax", "pushq", ["%rax"]))
            selector_block.append(Instruction("    pushq   %rcx", "pushq", ["%rcx"]))
            selector_block.append(Instruction("    pushq   %rdx", "pushq", ["%rdx"]))
            '''
            # VERSIONE CON RANDOM_SELECTOR COME GLOBAL
            # Lazy init del random_selector
            selector_block.append(Instruction("    movl    random_selector(%rip), %eax", "movl",
                                              ["random_selector(%rip)", "%eax"]))
            selector_block.append(Instruction("    testl   %eax, %eax", "testl", ["%eax", "%eax"]))
            skip_label = f".L{func_label}_win{win_idx}_skip_init"
            selector_block.append(Instruction(f"    jne     {skip_label}", "jne", [skip_label]))
            selector_block.append(Instruction("    rdtsc", "rdtsc", []))
            selector_block.append(Instruction("    xorq    %rdx, %rax", "xorq", ["%rdx", "%rax"]))
            selector_block.append(Instruction("    movl    %eax, random_selector(%rip)", "movl",
                                              ["%eax", "random_selector(%rip)"]))
            selector_block.append(Instruction(f"{skip_label}:", None))

            selector_block.append(Instruction("    movl    random_selector(%rip), %eax", "movl",
                                              ["random_selector(%rip)", "%eax"]))

            # random_selector = random_selector % num_variants
            selector_block.append(Instruction("    xorl    %edx, %edx", "xorl", ["%edx", "%edx"]))
            selector_block.append(Instruction(f"    movl    ${num_variants}, %ecx", "movl",
                                              [f"${num_variants}", "%ecx"]))
            selector_block.append(Instruction("    divl    %ecx", "divl", ["%ecx"]))
            selector_block.append(Instruction("    movl    %edx, %eax", "movl", ["%edx", "%eax"]))
            '''
            # VERSIONE CON RANDOM_SELECTOR SCELTO PRIMA DI OGNI FINESTRA
            # Random locale basato su rdtsc: niente stato globale
            # edx:eax = timestamp
            selector_block.append(Instruction("    rdtsc", "rdtsc", []))
            selector_block.append(Instruction("    xorq    %rdx, %rax", "xorq", ["%rdx", "%rax"]))

            # eax % num_variants -> indice in [0, num_variants-1]
            selector_block.append(Instruction(f"    movl    ${num_variants}, %ecx", "movl",
                                              [f"${num_variants}", "%ecx"]))
            selector_block.append(Instruction("    xorl    %edx, %edx", "xorl", ["%edx", "%edx"]))
            selector_block.append(Instruction("    divl    %ecx", "divl", ["%ecx"]))
            selector_block.append(Instruction("    movl    %edx, %eax", "movl", ["%edx", "%eax"]))


            # Ripristina RCX/RDX prima dei salti alle varianti
            selector_block.append(Instruction("    popq    %rdx", "popq", ["%rdx"]))
            selector_block.append(Instruction("    popq    %rcx", "popq", ["%rcx"]))

            # Ora EAX contiene l'indice, stack top contiene ancora il vecchio RAX
            # (che verrà ripristinato dalla popq %rax nella variante)
            for v in range(num_variants):
                selector_block.append(
                    Instruction(f"    cmpl    ${v}, %eax", "cmpl", [f"${v}", "%eax"])
                )
                selector_block.append(
                    Instruction(
                        f"    je      {make_variant_label(func.name, win_idx, v)[:-1]}",
                        "je",
                        [make_variant_label(func.name, win_idx, v)[:-1]],
                    )
                )

            selector_block.append(
                Instruction(
                    f"    jmp     {make_variant_label(func.name, win_idx, 0)[:-1]}",
                    "jmp",
                    [make_variant_label(func.name, win_idx, 0)[:-1]],
                )
            )

            # ======================================================
            # 3. Costruzione dei blocchi di variante
            # ======================================================
            needs_pad = _selector_needs_stack_padding(func) and not _window_touches_rsp(window_instrs)
            continue_label = make_continue_label(func.name, win_idx)
            variant_blocks = []

            for v, var_instrs in enumerate(variants):
                # Commento per leggibilità
                variant_blocks.append(Instruction(f"## Variant {v}"))

                # Etichetta della variante
                variant_blocks.append(Instruction(make_variant_label(func.name, win_idx, v)))

                # Ripristino di %rax prima dell'esecuzione della variante
                variant_blocks.append(Instruction("    popq    %rax", "popq", ["%rax"]))

                if needs_pad:
                    variant_blocks.append(
                        Instruction(f"    addq    ${_SELECTOR_STACK_PAD}, %rsp", "addq",
                            [f"${_SELECTOR_STACK_PAD}", "%rsp"]))

                # Corpo della variante
                variant_blocks.extend(var_instrs)

                # Salto alla label di continuazione comune
                variant_blocks.append(
                    Instruction(f"    jmp     {continue_label[:-1]}", "jmp", [continue_label[:-1]])
                )

            # Label finale per la continuazione del flusso
            continue_instr = Instruction(continue_label)

            # ======================================================
            # 4. Inserimento nel corpo della funzione
            #    (bottom-up: non serve offset)
            # ======================================================
            #func.instructions[start:end + 1] = selector_block + variant_blocks + [continue_instr]

            # Se la funzione usa red-zone locals e NON alloca un frame, i push del selector
            # possono clobberare -8(%rbp)/-16(%rbp).
            # Inseriamo padding su %rsp prima del selector e lo ripristiniamo
            # all'inizio di ogni variante (subito dopo il popq %rax), così qualsiasi
            # branch che esce dalla finestra non può saltare il ripristino e corrompere lo stack.
            prefix = []

            #suffix = []

            #if _selector_needs_stack_padding(func) and not _window_touches_rsp(window_instrs):
            if needs_pad:
                prefix.append(
                    Instruction(
                        f"    subq    ${_SELECTOR_STACK_PAD}, %rsp",
                        "subq",
                        [f"${_SELECTOR_STACK_PAD}", "%rsp"],
                    )
                )
                # addq subito dopo la continue label (cosi' %rsp e' ripristinato prima del resto della funzione)
                #suffix.append(
                #    Instruction(
                #        f"    addq    ${_SELECTOR_STACK_PAD}, %rsp",
                #        "addq",
                #        [f"${_SELECTOR_STACK_PAD}", "%rsp"],
                #    )
                #)

            #func.instructions[start:end + 1] = prefix + selector_block + variant_blocks + [continue_instr] + suffix
            func.instructions[start:end + 1] = prefix + selector_block + variant_blocks + [continue_instr]

            functions = _emit_retpoline_ool_thunks(functions)

    return functions
