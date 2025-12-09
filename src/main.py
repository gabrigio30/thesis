from src.parser import load_functions, write_functions
from src.detector import annotate_transient_instructions, get_windows_text_report
from src.variant_generator2 import (
    generate_variants_for_results,
    transform_nop,
    transform_fence,
    transform_lea_split,
    transform_reorder_movs,
)

def main():
    funcs = load_functions('Ctests/spectre.s')
    results = annotate_transient_instructions(funcs, window_size=7)

    # Esempio: 20% nop, 30% fence, 40% lea_split, 10% reorder_movs
    transform_mix = {
        transform_nop: 0.0,
        transform_fence: 0.0,
        transform_lea_split: 0.5,
        transform_reorder_movs: 0.5,
    }

    out = generate_variants_for_results(
        funcs,
        results,
        num_variants=20,
        transforms_per_variant=4,   # 1 trasformazione per variante (oltre all'originale)
        transform_weights=transform_mix,
    )

    write_functions(out, 'Ctests/spectreNew20.s')

'''
def main():
    funcs = load_functions("Ctests/SpectrePoC.s")
    detections = annotate_transient_instructions(funcs)
    for func in funcs:
        for instr in func.instructions:
            if instr.is_transient_window:
                print(f" Func '{func.name}': {instr.to_asm()} --> score={instr.transient_score}")

def main():
    funcs = load_functions('Ctests/spectre.s')
    results = annotate_transient_instructions(funcs, window_size=7)

    #for r in results:
    #    print(r)

    #Per debug visuale di una funzione specifica:
    #print(get_windows_text_report(funcs[0]))

    out = generate_variants_for_results(funcs, results, 100)
    res = write_functions(out, 'Ctests/spectreSame_100.s')
'''

if __name__ == "__main__":
    main()
