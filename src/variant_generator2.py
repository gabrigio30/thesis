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
from parser import Instruction


# ==============================================================
# Helper per generare etichette leggibili e univoche
# ==============================================================

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


# ==============================================================
# Trasformazioni disponibili
# ==============================================================

def transform_nop(instrs, max_nops=3):
    """
    Inserisce un numero casuale di istruzioni NOP all’interno
    della finestra per aumentare la diversità temporale.
    """
    out = [deepcopy(i) for i in instrs]
    n = random.randint(1, max_nops)
    for _ in range(n):
        idx = random.randint(0, len(out))
        out.insert(idx, Instruction("    nop", "nop"))
    return out


def transform_fence(instrs, fence_mnemonic="lfence"):
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


import random  # se non è già importato in variant_generator2.py

def transform_dummy_load(instrs, max_offset=64):
    """
    Inserisce un 'dummy load' da un buffer sicuro globale (__spec_noise_buf)
    per aggiungere rumore nel pattern di accesso alla cache.

    - Non modifica le istruzioni esistenti (solo inserimenti).
    - Salva e ripristina i registri usati (r10, r11) con push/pop.
    - Usa un offset random [0, max_offset) per differenziare le varianti.
    - Presuppone che nel file .s finale esista un simbolo globale:
        .comm   __spec_noise_buf,4096,16
      (da aggiungere nel writer UNA sola volta se questa trasformazione viene usata).
    """
    out = [deepcopy(i) for i in instrs]

    # 1) Trova un punto "sensato" per il dummy load: prima del primo accesso a memoria
    mem_idx = None
    for idx, ins in enumerate(out):
        # salta direttive/label o istruzioni senza mnemonic
        if getattr(ins, "mnemonic", None) is None or getattr(ins, "directive", False):
            continue

        # euristica grezza: operandi con "(" => indirizzamento memoria
        ops_str = ",".join(ins.operands) if ins.operands else ""
        if "(" in ops_str:
            mem_idx = idx
            break

    if mem_idx is None:
        # fallback: se non troviamo accessi a memoria, inseriamo a metà finestra
        insert_pos = len(out) // 2
    else:
        insert_pos = mem_idx

    # 2) Costruisci il blocco di dummy load
    #    Usiamo r10/r11, salvati con push/pop per non rompere la semantica.
    #    offset random (in byte) dentro il buffer per muovere un po' il pattern di cache.
    offset = 0
    if max_offset > 0:
        offset = random.randint(0, max_offset - 1)

    if offset == 0:
        mem_operand = "(%r10)"
    else:
        mem_operand = f"{offset}(%r10)"

    dummy_block = []

    dummy_block.append(Instruction("    ## Dummy load noise block", None, []))
    #dummy_block.append(Instruction("    pushq   %r10", "pushq", ["%r10"]))
    #dummy_block.append(Instruction("    pushq   %r11", "pushq", ["%r11"]))
    dummy_block.append(Instruction("    leaq    __spec_noise_buf(%rip), %r10",
                                   "leaq", ["__spec_noise_buf(%rip)", "%r10"]))
    dummy_block.append(Instruction(f"    movb    {mem_operand}, %r11b",
                                   "movb", [mem_operand, "%r11b"]))
    #dummy_block.append(Instruction("    popq    %r11", "popq", ["%r11"]))
    #dummy_block.append(Instruction("    popq    %r10", "popq", ["%r10"]))

    # 3) Inserisci il blocco nel punto scelto
    out[insert_pos:insert_pos] = dummy_block

    return out

# transform_dummy_load.TAGS = {"decorative"}


# ==============================================================
# Generatore principale di varianti
# ==============================================================

def generate_variants_for_results(functions, results,
                                  num_variants=3,
                                  transformations=None,
                                  seed=None):
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
    """

    if seed is not None:
        random.seed(seed)

    # Di default, usiamo solo la trasformazione NOP
    if transformations is None:
        #transformations = [transform_nop]
        transformations = [transform_fence]
        #transformations = [transform_dummy_load]
        #transformations = [transform_nop, transform_dummy_load]
        #transformations = [transform_nop, transform_fence, transform_dummy_load]

    # --- Conversione compatibilità formato ---
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

        # Lavoriamo dal fondo verso l'inizio: così non ci serve nessun offset
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

            # Varianti successive: trasformazioni randomiche
            for _v in range(1, num_variants):
                t = random.choice(transformations)
                transformed = t(window_instrs)
                variants.append(transformed)

            '''
            for _v in range(1, num_variants):
                variants.append([deepcopy(i) for i in window_instrs])
            '''

            # ======================================================
            # 2. Costruzione del blocco di selezione dinamica
            # ======================================================
            selector_block = []

            # Salva i registri che andremo a clobberare
            selector_block.append(Instruction('## Start of variant dynamic selector'))
            selector_block.append(Instruction("    pushq   %rax", "pushq", ["%rax"]))
            selector_block.append(Instruction("    pushq   %rcx", "pushq", ["%rcx"]))
            selector_block.append(Instruction("    pushq   %rdx", "pushq", ["%rdx"]))

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
            '''

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
            continue_label = make_continue_label(func.name, win_idx)
            variant_blocks = []

            for v, var_instrs in enumerate(variants):
                # Commento per leggibilità
                variant_blocks.append(Instruction(f"## Variant {v}"))

                # Etichetta della variante
                variant_blocks.append(Instruction(make_variant_label(func.name, win_idx, v)))

                # Ripristino di %rax prima dell'esecuzione della variante
                variant_blocks.append(Instruction("    popq    %rax", "popq", ["%rax"]))

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
            func.instructions[start:end + 1] = selector_block + variant_blocks + [continue_instr]

    return functions
