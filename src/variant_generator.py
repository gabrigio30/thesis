# src/variant_generator.py
"""
Variant generator integrabile nel parser del progetto Thesis.

Requisiti:
- il tuo parser fornisce una classe Instruction importabile come `from parser import Instruction`
- la struttura `Function` ha l'attributo `instructions` che è una lista ordinata
  di oggetti Instruction (o stringhe che rappresentano linee assembly).
- `results` è una mappa {func_name: [window_obj, ...]} dove ogni window_obj è
  un dict con almeno 'start' (inclusive) e 'end' (exclusive) indici nella lista
  instructions della funzione.

Comportamento:
- per ogni finestra: genera `num_variants` varianti (prima = originale);
- le varianti (eccetto la originale) combinano randomicamente fino a
  `max_transforms_per_variant` trasformazioni scelte dalla lista `transformations`;
- NOP inserito come Instruction("nop");
- dummy read inserito come lettura da .L_dummy_buf (Instruction con le istruzioni adeguate);
- la finestra originale viene sostituita inline con:
    prologo (rand -> idx -> carica jump-table -> jmp *%rax),
    etichette/varianti (var0, var1, ...),
    jump-table (.quad ...),
  e la continuation reale (etichetta immediatamente dopo la finestra) viene rilevata
  o creata automaticamente.
- Le varianti finiscono con `jmp <continuation_label>` così da riprendere il flusso
  esattamente dove era originariamente.
"""

import random
from copy import deepcopy
import re

# importa la classe Instruction dal tuo parser; assegna il path corretto se diverso
from parser import Instruction

# ----------------------------- Helper ----------------------------- #

def _labelify(func_name: str) -> str:
    """Rimuove underscore iniziale e produce base label function."""
    return func_name.lstrip("_")

def make_variant_label(func_name: str, win_idx: int, var_idx: int) -> str:
    base = _labelify(func_name)
    return f".L{base}_win{win_idx}_var{var_idx}:"

def make_table_label(func_name: str, win_idx: int) -> str:
    base = _labelify(func_name)
    return f".L{base}_win{win_idx}_table:"

def is_label_instr(instr) -> bool:
    """
    Rileva se un'Instruction rappresenta una label (es. 'LBB0_2:' o '.Lfoo:').
    Supporta sia oggetti Instruction (con .text) sia raw string.
    """
    txt = instr.raw_line
    #print(txt)
    return bool(re.match(r'^\s*[A-Za-z0-9_.]+:\s*$', txt))

def get_label_text(instr) -> str:
    """Restituisce la text della label senza indentazione, es. 'LBB0_2:'."""
    if hasattr(instr, "text"):
        return instr.text.strip()
    else:
        return str(instr).strip()

def make_quad_instr(target_label: str) -> Instruction:
    """Crea un'Instruction che rappresenta '.quad <label>' (usata nella rodata jump table)."""
    return Instruction(f"    .quad   {target_label[:-1]}")  # togli i ':' dalla label

# ------------------------- Trasformazioni ------------------------- #

def transform_original(instrs):
    """Ritorna copia fedele della sequenza di istruzioni."""
    return [deepcopy(i) for i in instrs]

def transform_nop_random(instrs, max_nops=3):
    """
    Inserisce un numero random di NOP (da 1 a max_nops) in posizioni random
    tra le istruzioni. Usa Instruction('nop') per inserire NOP.
    ATTENZIONE: non tenta di cambiare semantica; assume che inserire NOP sia sicuro.
    """
    out = [deepcopy(i) for i in instrs]
    n_nops = random.randint(1, max_nops)
    for _ in range(n_nops):
        idx = random.randint(0, len(out))  # possibile inserire anche in coda
        out.insert(idx, Instruction("    nop"))
    return out

def transform_dummy_read(instrs, dummy_label=".L_dummy_buf"):
    """
    Inserisce una lettura dummy (per alterare cache) all'inizio della finestra.
    Usa istruzioni RIP-relative standard per non rompere relocazioni.
    """
    out = [deepcopy(i) for i in instrs]
    # le due istruzioni aggiunte sono un esempio compatto e portabile:
    # leaq .L_dummy_buf(%rip), %rax
    # movzbl (%rax), %eax
    out.insert(0, Instruction(f"    leaq    {dummy_label}(%rip), %rax"))
    out.insert(1, Instruction(f"    movzbl  (%rax), %eax    ## dummy read"))
    return out

# Poi aggiungere ulteriori trasformazioni qui (es. micro-reorder, branch --> cmov, ecc.)

# ---------------------- Core: generazione varianti ---------------------- #

def generate_variants_for_results(functions, results,
                                  num_variants=3,
                                  max_transforms_per_variant=2,
                                  transformations=None,
                                  max_nops_for_fallback=6,
                                  seed=None):
    """
    Integra varianti direttamente nelle instructions della Function.

    Parametri:
    - functions: dict {func_name: Function}
    - results: lista di dict nel formato sopra
    - num_variants: numero totale di varianti da generare (inclusa l'originale)
    - max_transforms_per_variant: numero massimo di trasformazioni per variante
    - transformations: lista di funzioni di trasformazione
    - max_nops_for_fallback: parametro per fallback NOP
    - seed: seme random opzionale

    Restituisce: la stessa mappa `functions` con .instructions modificate inline.
    """
    #for f in functions:
    #    print({f'Name: {f.name}'})
    #    for i in f.instructions:
    #        print({f'Instructions: {i.to_asm}'})

    if seed is not None:
        random.seed(seed)

    if transformations is None:
        transformations = [transform_nop_random] #, transform_dummy_read]

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

    # Validazione di base
    if num_variants < 1:
        raise ValueError("num_variants deve essere >= 1 (la prima variante è l'originale).")
    if max_transforms_per_variant < 1:
        raise ValueError("max_transforms_per_variant deve essere >= 1.")

    # Elaboriamo funzione per funzione
    for func_name, windows in results.items():
        #print(func_name)
        #if func_name not in functions:
            # ENTRA SEMPRE QUI NONOSTANTE I NOMI SIANO UGUALI
        #    continue
        instrs = None
        for f in functions:
            if f.name == func_name:
                func = f
                instrs = func.instructions
                #print('fatto')

        if instrs is None:
            continue

        for window in windows:
            print(window)

        #func = functions[func_name]
        #instrs = func.instructions  # alias
        #print({f'Instructions before generating variants for {func_name}: {instrs}'})

        # Process windows in reverse order per evitare shift degli indici
        for win_idx, window in reversed(list(enumerate(windows))):
            start = window['start']
            end = window['end']

            if not (0 <= start < len(instrs)) or not (0 < end <= len(instrs)) or start >= end:
                raise IndexError(f"Window indices invalidi per {func_name} window {win_idx}: {(start,end)}")

            window_instrs = [instrs[i] for i in range(start, end + 1)]
            #for w in window_instrs:
                #print(w.raw_line)

            # Genera varianti: prima = originale
            variants = [transform_original(window_instrs)]

            for _ in range(num_variants - 1):
                v = transform_original(window_instrs)
                n_t = random.randint(1, max_transforms_per_variant)
                chosen = random.sample(transformations, k=min(n_t, len(transformations)))
                for t in chosen:
                    v = t(v)
                variants.append(v)

            def _seq_text(seq):
                return "\n".join(i.text if hasattr(i, "text") else str(i) for i in seq)

            # METTE TUTTO IN UN'UNICA LISTA PER CONTROLLARE DIFFERENZE TRA VAIRIANTI, VA CAMBIATO
            '''
            texts = [_seq_text(v) for v in variants]
            print(texts)
            if len(set(texts)) != len(texts):
                for i in range(1, len(variants)):
                    variants[i] = transform_nop_random(window_instrs, max_nops=max_nops_for_fallback)
            '''

            # ------------------- continuation_label -------------------
            continuation_label = None
            if end < len(instrs):
                found = None
                for idx in range(end, len(instrs)):
                    #print(instrs[idx].raw_line)
                    #print(is_label_instr(instrs[idx]))
                    if is_label_instr(instrs[idx]):
                        found = instrs[idx]
                        print(f'Continuation label: {found.raw_line}')
                        break
                if found is not None:
                    continuation_label = found.raw_line
                else:
                    continuation_label = f"Lcont_{_labelify(func_name)}_win{win_idx}:"
                    instrs.insert(end, Instruction(continuation_label))
            else:
                continuation_label = f"Lcont_{_labelify(func_name)}_win{win_idx}:"
                instrs.append(Instruction(continuation_label))

            if not continuation_label.endswith(":"):
                continuation_label += ":"

            # ------------------- prologo -------------------
            # -----------------------------------------------
            # In pseudocodice è sostanzialmente questo:
            # -----------------------------------------------
            # int idx = rand() % 3;
            # void* jump_table[] = { &variant0, &variant1, &variant2 };
            # goto *jump_table[idx];
            #------------------------------------------------
            # ANDREBBE CONTROLLATO SE I REGISTRI SONO LIBERI PER EVITARE PROBLEMI DURANTE L'ESECUZIONE

            table_label = make_table_label(func_name, win_idx)[:-1]
            prologue = [
                Instruction("    /* --- variant selection prologue START --- */"),
                Instruction("    call    _rand"),
                Instruction("    cdq"),
                Instruction(f"    mov     ${num_variants}, %ebx"),
                Instruction("    idiv    %ebx           ## edx = rand() % num_variants"),
                Instruction(f"    lea     {table_label}(%rip), %rcx"),
                Instruction("    movzbl  %dl, %edx"),
                Instruction("    mov     (%rcx,%rdx,8), %rax"),
                Instruction("    jmp     *%rax"),
                Instruction("    /* --- variant selection prologue END --- */"),
            ]

            # ------------------- sostituzione finestra -------------------

            del instrs[start:end + 1]

            # ANDREBBE INSERITA UNA LABEL DI DEFAULT NELLA RIGA SUBITO DOPO END DOVE DEVONO SALTARE
            # TUTTE LE VARIANTI ALLA FINE DELL'ESECUZIONE
            # esempio:
            #   movl	_array1_size(%rip), %ecx
            #   cmpq	%rcx, %rax      #INIZIO FINESTRA
            #   jae LBB0_2
            # ## %bb.1:
            # 	movq	-8(%rbp), %rcx      # FINE FINESTRA
            # 	leaq	_array1(%rip), %rax
            # --------------------------
            # DEVE DIVENTARE
            # --------------------------
            #   movl	_array1_size(%rip), %ecx
            # ROBA PROLOGO
            # VARIANTE 1
            #   .....
            #   jmp LcontinueWinN
            # VARIANTE 2
            #   .....
            #   jmp LcontinueWinN
            # JUMP TABLE ECC..
            # LcontinueWinN:
	        #   leaq	_array1(%rip), %rax

            #for i in instrs:
            #    print(i.raw_line)

            for i, ins in enumerate(reversed(prologue)):
                instrs.insert(start, ins)

            #for i in instrs:
            #    print(i.raw_line)

            for v in variants:
                print('\nVariant')
                for l in range(len(v)):
                    print(v[l].raw_line)

            pos_base = start + len(prologue)

            # ------------------- inserisci varianti -------------------
            for var_idx, vseq in enumerate(variants):

                lbl = make_variant_label(func_name, win_idx, var_idx)
                instrs.insert(pos_base, Instruction(lbl)); pos_base += 1
                for vi in vseq:
                    #instrs.insert(pos_base, deepcopy(vi) if hasattr(vi, "text") else Instruction(str(vi)))
                    instrs.insert(pos_base, Instruction(vi.raw_line))
                    pos_base += 1
                cont_target = continuation_label[:-1] if continuation_label.endswith(":") else continuation_label
                instrs.insert(pos_base, Instruction(f"    jmp {cont_target}")); pos_base += 1

            # ------------------- jump table -------------------
            table_label_with_colon = make_table_label(func_name, win_idx)
            instrs.insert(pos_base, Instruction(table_label_with_colon)); pos_base += 1
            instrs.insert(pos_base, Instruction(table_label_with_colon)); pos_base += 1
            for var_idx in range(num_variants):
                tgt_lbl = make_variant_label(func_name, win_idx, var_idx)
                instrs.insert(pos_base, Instruction(f"    .quad   {tgt_lbl[:-1]}")); pos_base += 1


    return functions


