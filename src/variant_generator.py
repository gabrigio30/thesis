# variant_generator.py
import random
import copy
from typing import List
from parser import Instruction, Function


# ==============================================================
#  FUNZIONI DI TRASFORMAZIONE (pure functions)
# ==============================================================

def transform_insert_nops(instrs: List[Instruction], nop_prob: float = 0.3) -> List[Instruction]:
    """
    Inserisce NOP in punti randomici del blocco.
    """
    new_instrs = []
    for instr in instrs:
        new_instrs.append(copy.deepcopy(instr))
        if random.random() < nop_prob:
            new_instrs.append(Instruction("\tnop"))
    return new_instrs


def transform_branch_to_cmov(instrs: List[Instruction]) -> List[Instruction]:
    """
    Trasforma semplici branch condizionali in equivalenti basati su CMOV
    (dove sensato e possibile).
    Non è un parser semantico, quindi applica la trasformazione solo
    su istruzioni che corrispondono a pattern semplici tipo 'cmp' + 'jcc'.
    """
    new_instrs = []
    skip_next = False

    for i, instr in enumerate(instrs):
        if skip_next:
            skip_next = False
            continue

        raw = instr.raw_line.strip()

        # cerca pattern 'cmp ...' seguito da 'je/jne/jae/jbe/...'
        if raw.startswith("cmp") and i + 1 < len(instrs):
            next_raw = instrs[i + 1].raw_line.strip()
            if next_raw.startswith(("je", "jne", "jae", "jbe", "jg", "jl")):
                # approssimazione: sostituisci cmp+jcc con cmov basato su stessa condizione
                cond = next_raw.split()[0][1:]  # e.g. "je" -> "e"
                # conversione fittizia in cmov form (dimostrativo)
                cmov_instr = Instruction(f"\tcmov{cond}\t%rsi, %rdi   # auto-generated CMOV")
                new_instrs.append(copy.deepcopy(instr))
                new_instrs.append(cmov_instr)
                skip_next = True
                continue

        new_instrs.append(copy.deepcopy(instr))

    return new_instrs


# ==============================================================
#  GENERATORE DI VARIANTI
# ==============================================================

class VariantGenerator:
    def __init__(self, n_variants: int = 3):
        self.n_variants = n_variants
        self.transformations = [transform_insert_nops, transform_branch_to_cmov]

    def generate_for_function(self, func: Function):
        """
        Analizza una funzione, trova blocchi transienti e genera varianti.
        Sostituisce i blocchi originali con selector if randomico nella struttura dati.
        """
        i = 0
        while i < len(func.instructions):
            instr = func.instructions[i]
            if instr.is_transient_window:
                # Identifica il blocco completo della finestra
                start = i
                while i < len(func.instructions) and func.instructions[i].is_transient_window:
                    i += 1
                end = i
                window_instrs = func.instructions[start:end]
                variants = self._generate_variants(window_instrs)
                selector_block = self._build_selector_block(variants, window_instrs)
                # Sostituisci nel corpo della funzione
                func.instructions = (
                    func.instructions[:start] + selector_block + func.instructions[end:]
                )
                i = start + len(selector_block)
            else:
                i += 1

    def _generate_variants(self, window_instrs: List[Instruction]) -> List[List[Instruction]]:
        """
        Genera N varianti applicando trasformazioni randomiche.
        """
        variants = []
        for _ in range(self.n_variants):
            instrs_copy = copy.deepcopy(window_instrs)
            # Scegli una o più trasformazioni randomiche
            transf = random.choice(self.transformations)
            new_instrs = transf(instrs_copy)
            variants.append(new_instrs)
        return variants

    def _build_selector_block(
        self, variants: List[List[Instruction]], original: List[Instruction]
    ) -> List[Instruction]:
        """
        Costruisce un blocco di selezione basato su un parametro randomico.
        Esegue una delle varianti o l'originale.
        """
        selector_var = "rand_param(%rip)"  # simbolico
        block = []
        block.append(Instruction("\t# --- BEGIN VARIANT SELECTOR ---"))

        total = len(variants)
        for idx, variant in enumerate(variants):
            block.append(Instruction(f"\t# Variant {idx}"))
            block.append(Instruction(f"\tcmp\t${idx}, {selector_var}"))
            block.append(Instruction(f"\tje\tVARIANT_{idx}_START"))

        # caso di default: originale
        block.append(Instruction(f"\tjmp\tORIGINAL_VARIANT_START"))

        # corpi delle varianti
        for idx, variant in enumerate(variants):
            block.append(Instruction(f"VARIANT_{idx}_START:"))
            block.extend(variant)
            block.append(Instruction(f"\tjmp\tVARIANT_END"))

        # originale
        block.append(Instruction("ORIGINAL_VARIANT_START:"))
        block.extend(original)

        block.append(Instruction("VARIANT_END:"))
        block.append(Instruction("\t# --- END VARIANT SELECTOR ---"))
        return block
