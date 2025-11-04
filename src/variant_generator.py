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
    txt = instr.text if hasattr(instr, "text") else str(instr)
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

# Puoi aggiungere ulteriori trasformazioni qui (es. micro-reorder, padding differente, ecc.)

# ---------------------- Core: generazione varianti ---------------------- #

def generate_variants_for_results(functions, results,
                                  num_variants=3,
                                  max_transforms_per_variant=2,
                                  transformations=None,
                                  max_nops_for_fallback=6,
                                  seed=None):
    """
    Versione robusta che prima normalizza `results` con normalize_results().
    Il resto della logica è invariata rispetto alla versione precedente.
    """
    # normalizza i risultati in una mappa func_name -> list of windows
    results_map = normalize_results(results)

    if seed is not None:
        random.seed(seed)

    if transformations is None:
        transformations = [transform_nop_random, transform_dummy_read]

    # Validazione di base
    if num_variants < 1:
        raise ValueError("num_variants deve essere >= 1 (la prima variante è l'originale).")
    if max_transforms_per_variant < 1:
        raise ValueError("max_transforms_per_variant deve essere >= 1.")

    # Elaboriamo funzione per funzione
    for func_name, windows in results_map.items():
        if func_name == "" and func_name not in functions:
            # se abbiamo finestre senza func_name e non c'è una funzione corrispondente,
            # proviamo ad applicare alle function di default (o skip).
            # Per sicurezza saltiamo.
            print("[normalize_results] Warning: windows senza riferimento a funzione; skipping.")
            continue

        if func_name not in functions:
            # skip: risultato del detector per funzione non presente nelle functions
            # ma è possibile che results_map contenga key "" con windows generiche, le skippiamo
            print(f"[generate_variants] Warning: funzione '{func_name}' non trovata in functions; skipping.")
            continue

        func = functions[func_name]
        instrs = func.instructions  # alias

        # Process windows in reverse order per evitare shift degli indici durante le modifiche
        for win_idx, window in reversed(list(enumerate(windows))):
            # Il window può essere un dict {'start':..., 'end':...} oppure
            # avere nomi differenti: adattiamo
            if isinstance(window, dict):
                # preferenze per key start/end
                if 'start' in window and 'end' in window:
                    start = window['start']
                    end = window['end']
                elif 'i' in window and 'j' in window:
                    start = window['i']; end = window['j']
                else:
                    # formati alternativi: try to infer from 'range' or 'span'
                    if 'range' in window and isinstance(window['range'], (list, tuple)) and len(window['range']) == 2:
                        start, end = window['range']
                    else:
                        raise ValueError(f"Window format non riconosciuto per {func_name} window {win_idx}: {window}")
            elif isinstance(window, (list, tuple)) and len(window) == 2 and all(isinstance(x, int) for x in window):
                start, end = window
            else:
                raise ValueError(f"Window format non riconosciuto per {func_name} window {win_idx}: {window}")

            # Sanity check sugli indici
            if not (0 <= start < len(instrs)) or not (0 < end <= len(instrs)) or start >= end:
                raise IndexError(f"Window indices invalidi per {func_name} window {win_idx}: {(start,end)}")

            # Copia della finestra originale
            window_instrs = [deepcopy(instrs[i]) for i in range(start, end)]

            # Genera varianti: la prima è sempre la originale
            variants = [transform_original(window_instrs)]

            # Genera le altre varianti combinando trasformazioni casualmente
            for _ in range(num_variants - 1):
                v = transform_original(window_instrs)
                n_t = random.randint(1, max_transforms_per_variant)
                chosen = random.sample(transformations, k=n_t if n_t <= len(transformations) else len(transformations))
                for t in chosen:
                    v = t(v)
                variants.append(v)

            # Se due o più varianti risultano uguali -> fallback: forziamo NOP diversi
            def _seq_text(seq):
                return "\n".join(i.text if hasattr(i, "text") else str(i) for i in seq)
            texts = [_seq_text(v) for v in variants]
            if len(set(texts)) != len(texts):
                # fallback: rigeneriamo le varianti (tranne l'originale) con molti NOP
                for i in range(1, len(variants)):
                    variants[i] = transform_nop_random(window_instrs, max_nops=max_nops_for_fallback)

            # ------------------- Determina continuation_label -------------------
            # Cerchiamo la prima label immediatamente dopo la finestra (scorrendo da 'end').
            # Se troviamo un'istruzione che è label (es. "LBB0_2:") la usiamo.
            # Altrimenti creiamo una nuova label e la inseriamo nella posizione 'end'.
            continuation_label = None
            if end < len(instrs):
                found = None
                for idx in range(end, len(instrs)):
                    if is_label_instr(instrs[idx]):
                        found = instrs[idx]
                        break
                if found is not None:
                    continuation_label = get_label_text(found)
                else:
                    continuation_label = f"Lcont_{_labelify(func_name)}_win{win_idx}:"
                    instrs.insert(end, Instruction(continuation_label))
            else:
                continuation_label = f"Lcont_{_labelify(func_name)}_win{win_idx}:"
                instrs.append(Instruction(continuation_label))

            if not continuation_label.endswith(":"):
                continuation_label = continuation_label + ":"

            # ------------------- Costruisci prologo (Instruction objects) -------------------
            table_label = make_table_label(func_name, win_idx)[:-1]  # senza ':' per usare in lea
            prologue = [
                Instruction("    /* --- variant selection prologue START --- */"),
                Instruction("    call    rand@PLT"),
                Instruction("    cdq"),
                Instruction(f"    mov     ${num_variants}, %ebx"),
                Instruction("    idiv    %ebx           ## edx = rand() % num_variants"),
                Instruction(f"    lea     {table_label}(%rip), %rcx"),
                Instruction("    movzbl  %dl, %edx"),
                Instruction("    mov     (%rcx,%rdx,8), %rax"),
                Instruction("    jmp     *%rax"),
                Instruction("    /* --- variant selection prologue END --- */"),
            ]

            # ------------------- Sostituisci la finestra con il prologo -------------------
            del instrs[start:end]
            for i, ins in enumerate(reversed(prologue)):
                instrs.insert(start, ins)

            pos_base = start + len(prologue)

            # ------------------- Inserisci le varianti inline -------------------
            for var_idx, vseq in enumerate(variants):
                lbl = make_variant_label(func_name, win_idx, var_idx)
                instrs.insert(pos_base, Instruction(lbl)); pos_base += 1
                for vi in vseq:
                    if hasattr(vi, "text"):
                        instrs.insert(pos_base, deepcopy(vi)); pos_base += 1
                    else:
                        instrs.insert(pos_base, Instruction(str(vi))); pos_base += 1
                cont_target = continuation_label[:-1] if continuation_label.endswith(":") else continuation_label
                instrs.insert(pos_base, Instruction(f"    jmp     {cont_target}")); pos_base += 1

            # ------------------- Inserisci la jump-table subito dopo le varianti -------------------
            table_label_with_colon = make_table_label(func_name, win_idx)
            instrs.insert(pos_base, Instruction(table_label_with_colon)); pos_base += 1
            for var_idx in range(num_variants):
                tgt_lbl = make_variant_label(func_name, win_idx, var_idx)
                q = Instruction(f"    .quad   {tgt_lbl[:-1]}")
                instrs.insert(pos_base, q); pos_base += 1

    return functions

