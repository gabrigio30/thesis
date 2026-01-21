from src.parser import load_functions, write_functions
from src.detector import annotate_transient_instructions, get_windows_text_report
from src.variant_generator2 import (
    generate_variants_for_results,
    transform_nop,
    transform_fence_after_jcc,
    transform_lea_split,
    transform_reorder_movs,
    transform_index_masking_light,
    transform_retpoline_rewrite,
    transform_fence_between_store_load,
    transform_ssb_dependency_chain_barrier,
)

def main():
    funcs = load_functions('SpectreV1Tests/spectreHPS.s')
    results = annotate_transient_instructions(funcs, window_size=7,
                                              enabled_detectors = ['detect_cmp_jcc_mem',
                                                                   #'detect_indirect_branch',
                                                                   #'detect_store_then_load',
                                                                   ])

    for r in results:
        print(r)
        print('\n')

    for func in funcs:
        for instr in func.instructions:
            if instr.is_transient_window:
                print(f" Func '{func.name}': {instr.to_asm()} --> score={instr.transient_score}")

    # Esempio: 20% nop, 30% fence, 40% lea_split, 10% reorder_movs
    transform_mix = {
        #transform_index_masking_light: 1,
        #transform_nop: 0.2,
        #transform_lea_split: 0.15,
        #transform_reorder_movs: 1,
        transform_fence_after_jcc: 1,
        #transform_fence_between_store_load: 0.5,
        #transform_ssb_dependency_chain_barrier: 0.15,
        #transform_retpoline_rewrite: 1,
    }

    out = generate_variants_for_results(
        funcs,
        results,
        num_variants=100,
        same_variants=False,
        transforms_per_variant=1,   # N trasformations per variant
        transform_weights=transform_mix,
    )

    write_functions(out, 'SpectreV1Tests/spectreHPSfence100.s')


if __name__ == "__main__":
    main()