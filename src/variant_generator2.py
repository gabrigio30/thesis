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
#
# Struttura del blocco generato:
#
#   pushq %rax
#   movl  random_selector(%rip), %eax
#   cmpl  $0, %eax
#   je    .Lfunc_win0_var0
#   cmpl  $1, %eax
#   je    .Lfunc_win0_var1
#   popq  %rax
#   jmp   .Lfunc_win0_var0
#
# .Lfunc_win0_var0:
#   ... codice variante originale ...
#   jmp .Lfunc_win0_continue
#
# .Lfunc_win0_var1:
#   ... codice trasformato (es. NOP insertion) ...
#   jmp .Lfunc_win0_continue
#
# .Lfunc_win0_continue:
#   ... prima istruzione successiva alla finestra ...
#
# ==============================================================

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
    - num_variants: numero totale di varianti da generare (inclusa l'originale)
    - transformations: lista di funzioni di trasformazione (solo quelle "reali")
    - seed: seme random per riproducibilità
    """

    if seed is not None:
        random.seed(seed)

    # Di default, usiamo solo la trasformazione NOP
    if transformations is None:
        transformations = [transform_nop]

    # --- Conversione compatibilità formato ---
    # Se results è una lista di dict con chiave 'function', lo mappiamo in un dict {func_name: windows}
    if isinstance(results, list):
        results_map = {}
        for entry in results:
            func_name = entry.get("function")
            windows = entry.get("windows", [])
            # Convertiamo i campi start_index/end_index -> start/end
            norm_windows = []
            for w in windows:
                if "start_index" in w and "end_index" in w:
                    norm_windows.append({
                        "start": w["start_index"],
                        "end": w["end_index"],
                        "pattern": w.get("pattern", ""),
                        "score": w.get("score", 0.0)
                    })
            results_map[func_name] = norm_windows
        results = results_map

    for func in functions:
        if func.name not in results:
            continue  # nessuna finestra in questa funzione

        func_label = _labelify(func.name)
        func_results = results[func.name]
        offset = 0  # serve per correggere gli indici quando inseriamo codice extra
        windows_sorted = sorted(func_results, key=lambda w: w["start"], reverse=True)

        # Elaboriamo ogni finestra rilevata
        for win_idx, window in enumerate(windows_sorted):
            start = window["start"]
            end = window["end"]
            window_instrs = func.instructions[start:end + 1]


            # ======================================================
            # 1. Generazione varianti
            # ======================================================
            variants = []

            # Variante 0: copia esatta (originale)
            variants.append([deepcopy(i) for i in window_instrs])

            # Varianti successive: applicazione di trasformazioni reali
            for v in range(1, num_variants):
                t = random.choice(transformations)
                variants.append(t(window_instrs))

            # ======================================================
            # 2. Costruzione blocco di selezione random
            # ======================================================
            continue_label = make_continue_label(func.name, win_idx)

            selector_block = []

            # Salva RAX per sicurezza
            selector_block.append(Instruction('## Start of variant dynamic selector'))
            selector_block.append(Instruction("    pushq   %rax", "pushq", ["%rax"]))

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

            # Confrontiamo %eax con ciascun indice di variante
            for v in range(num_variants):
                selector_block.append(
                    Instruction(f"    cmpl    ${v}, %eax", "cmpl", [f"${v}", "%eax"])
                )
                selector_block.append(
                    Instruction(f"    je      {make_variant_label(func.name, win_idx, v)[:-1]}", "je",
                                [make_variant_label(func.name, win_idx, v)[:-1]])
                )

            # Salto di default alla variante 0
            selector_block.append(
                Instruction(f"    jmp     {make_variant_label(func.name, win_idx, 0)[:-1]}", "jmp",
                            [make_variant_label(func.name, win_idx, 0)[:-1]])
            )

            # ======================================================
            # 3. Costruzione blocchi varianti
            # ======================================================
            variant_blocks = []

            for v, var_instrs in enumerate(variants):
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
            # ======================================================
            insertion_point = start + offset
            func.instructions[insertion_point:end + offset + 1] = (
                selector_block + variant_blocks + [continue_instr]
            )

            # Aggiorniamo offset per mantenere coerenza dei prossimi indici
            offset += len(selector_block) + len(variant_blocks) + 1 - (end - start + 1)

    return functions
