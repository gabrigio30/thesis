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
    Integra varianti direttamente nelle instructions della Function.

    Parametri:
    - functions: dict {func_name: Function} (la tua struttura Function)
    - results: dict {func_name: [window_dict, ...]} prodotto dal detector.
      ogni window_dict deve avere 'start' (inclusive) e 'end' (exclusive).
    - num_variants: numero totale di varianti da generare (inclusa l'originale).
    - max_transforms_per_variant: numero massimo di trasformazioni combinate per variante.
    - transformations: lista di funzioni di trasformazione (escl. transform_original).
    - max_nops_for_fallback: parametro per fallback in caso di duplicati.
    - seed: seme random (opzionale) per riproducibilità nei test.

    Restituisce: la stessa mappa `functions` con .instructions modificate inline.
    """

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
    for func_name, windows in results.items():
        if func_name not in functions:
            # skip: risultato del detector per funzione non presente nelle functions
            continue
        func = functions[func_name]
        instrs = func.instructions  # alias

        # Process windows in reverse order per evitare shift degli indici durante le modifiche
        for win_idx, window in reversed(list(enumerate(windows))):
            start = window['start']
            end = window['end']

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
            # Se troviamo un istruzione che è label (es. "LBB0_2:") la usiamo.
            # Altrimenti creiamo una nuova label e la inseriamo nella posizione 'end'.
            continuation_label = None
            # Se end == len(instrs) => non c'è istr. dopo la finestra
            if end < len(instrs):
                # cerchiamo la prima istruzione etichetta a partire da end
                found = None
                for idx in range(end, len(instrs)):
                    if is_label_instr(instrs[idx]):
                        found = instrs[idx]
                        break
                if found is not None:
                    continuation_label = get_label_text(found)
                else:
                    # nessuna label trovata: creiamo una nuova label e la inseriamo prima dell'istruzione 'end'
                    continuation_label = f"Lcont_{_labelify(func_name)}_win{win_idx}:"
                    instrs.insert(end, Instruction(continuation_label))
            else:
                # end == len(instrs): siamo alla fine della funzione, creiamo una label e la appendiamo
                continuation_label = f"Lcont_{_labelify(func_name)}_win{win_idx}:"
                instrs.append(Instruction(continuation_label))

            # Assicuriamoci che continuation_label termini con ':' per uniformità
            if not continuation_label.endswith(":"):
                continuation_label = continuation_label + ":"

            # ------------------- Costruisci prologo (Instruction objects) -------------------
            # Il prologo esegue: call rand@PLT; cdq; mov $N,%ebx; idiv %ebx; lea table(%rip),%rcx;
            # movzbl %dl,%edx; mov (%rcx,%rdx,8),%rax; jmp *%rax
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
            # Rimuoviamo la vecchia finestra
            del instrs[start:end]
            # Inseriamo il prologo al posto della finestra
            for i, ins in enumerate(reversed(prologue)):
                instrs.insert(start, ins)

            # pos_base è l'indice subito dopo il prologo; qui inseriremo le varianti e la table
            pos_base = start + len(prologue)

            # ------------------- Inserisci le varianti inline (immediatamente dopo prologo) -------------------
            # Ogni variante avrà:
            #   <label_var>:
            #       <istruzioni variante...>
            #       jmp <continuation_label_no_colon>
            # Alla fine lasciamo la jump table '.quad' nello stesso punto.
            for var_idx, vseq in enumerate(variants):
                lbl = make_variant_label(func_name, win_idx, var_idx)
                instrs.insert(pos_base, Instruction(lbl)); pos_base += 1
                # inseriamo le istruzioni della variante (copie)
                for vi in vseq:
                    # vi potrebbe essere Instruction o string; vogliamo Instruction
                    if hasattr(vi, "text"):
                        instrs.insert(pos_base, deepcopy(vi)); pos_base += 1
                    else:
                        instrs.insert(pos_base, Instruction(str(vi))); pos_base += 1
                # aggiungiamo il jump alla continuation (rimuoviamo i ':' per la label target)
                cont_target = continuation_label[:-1] if continuation_label.endswith(":") else continuation_label
                instrs.insert(pos_base, Instruction(f"    jmp     {cont_target}")); pos_base += 1

            # ------------------- Inserisci la jump-table subito dopo le varianti -------------------
            # Table label (con ':') e poi le .quad per ciascuna variante
            table_label_with_colon = make_table_label(func_name, win_idx)
            instrs.insert(pos_base, Instruction(table_label_with_colon)); pos_base += 1
            for var_idx in range(num_variants):
                tgt_lbl = make_variant_label(func_name, win_idx, var_idx)
                # .quad deve puntare alla label senza i ':'
                q = Instruction(f"    .quad   {tgt_lbl[:-1]}")
                instrs.insert(pos_base, q); pos_base += 1

            # Nota: non tocchiamo la `continuation_label` che abbiamo eventualmente inserito
            # in precedenza; dato che abbiamo inserito varianti+table al posto della finestra,
            # la continuation rimane al posto giusto e le varianti fanno jmp verso di essa.

    return functions

