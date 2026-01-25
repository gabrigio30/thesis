'''
# --- project imports (works both with and without the "src." package prefix) ---
from src.parser import load_functions, write_functions
from src.detector import annotate_transient_instructions
import src.variant_generator2 as vg
from src.fitness_db import FitnessDB
from src.genetic_optimizer import GeneticOptimizer, normalized_weights_for_attack


# ----------------------------
# User-configurable parameters
# ----------------------------
INPUT_S  = "SpectreV1Tests/spectre.s"
OUTPUT_S = "SpectreV1Tests/spectreFull.s"

RUNS_CSV = "src/Thesis - Runs.csv"
BASELINES_CSV = "src/Thesis - Baselines.csv"
MAPPING_CSV = "src/Thesis - Mapping.csv"

# IMPORTANT: these must match your Runs.csv attack_id values (can choose from spectre_v1, spectre_v4 and meltdown)
ATTACKS = ["spectre_v1"]

# IMPORTANT: "min_overhead_under_protection" mode implies only min_global_protection is set
#   while "max_protection_under_overhead" mode implies only overhead_budget is set
GA_MODE = "max_protection_under_overhead"  # or "min_overhead_under_protection"
OVERHEAD_BUDGET = 24.0                    # example constraint; set None to disable
MIN_GLOBAL_PROTECTION = None

# Detector configuration
WINDOW_SIZE = 7
ENABLED_DETECTORS = [
    "detect_cmp_jcc_mem",
    # "detect_indirect_branch",
    # "detect_store_then_load",

]


def build_transform_mix_from_cfg(db: FitnessDB, cfg, attacks):
    """
    Converts cfg.weights (w_*) into {transform_function: weight}.
    Uses Mapping.csv (weight_col -> transform_name) and looks up the function in variant_generator2.
    """

    # 1) Get the actual weights used by FitnessDB (masked+normalized per attack)
    if len(attacks) == 1:
        w_cols = normalized_weights_for_attack(db, attacks[0], cfg)  # { "w_*": value }
    else:
        # Average per-attack normalized weights, then renormalize
        acc = {col: 0.0 for col in db.weight_cols}
        for a in attacks:
            wa = normalized_weights_for_attack(db, a, cfg)
            for col, val in wa.items():
                acc[col] += float(val)
        for col in acc:
            acc[col] /= float(len(attacks))

        s = sum(acc.values())
        w_cols = acc if s <= 0 else {k: v / s for k, v in acc.items()}

    # 2) Map weight columns -> transform function names (from Mapping.csv)
    #    then transform function names -> callable objects in variant_generator2
    transform_mix = {}
    for weight_col, w in w_cols.items():
        if w <= 0:
            continue

        t_name = db.transform_name_by_weight_col.get(weight_col)
        if not t_name:
            # Mapping.csv might be missing this row
            continue

        t_func = getattr(vg, t_name, None)
        if not callable(t_func):
            # Mapping.csv name must match an actual function in variant_generator2.py
            # e.g., "transform_fence_after_jcc"
            continue

        transform_mix[t_func] = float(w)

    return transform_mix


def main():
    # 1) Load & detect transient windows
    funcs = load_functions(INPUT_S)
    results = annotate_transient_instructions(
        funcs,
        window_size=WINDOW_SIZE,
        enabled_detectors=ENABLED_DETECTORS,
    )

    # 2) Run GA optimizer (same structure as genetic_optimizer.py __main__)
    db = FitnessDB(
        runs_csv=RUNS_CSV,
        baselines_csv=BASELINES_CSV,
        mapping_csv=MAPPING_CSV,
        penalty_lambda=1.0,
    )

    opt = GeneticOptimizer(
        db=db,
        attacks=ATTACKS,
        mode=GA_MODE,
        overhead_budget=OVERHEAD_BUDGET,
        min_global_protection=None,
        overhead_weight=0.5,
        distance_weight=1.0,
        constraint_penalty=50.0,
        num_generations=120,
        sol_per_pop=80,
        num_parents_mating=20,
        mutation_percent_genes=25,
        random_seed=1,
    )

    res = opt.run()

    print("=== BEST CFG (raw genotype) ===")
    print(res.best_cfg)
    print("=== FINAL RESULTS ===")
    print(f"\nFitness: {res.fitness:.2f}")
    print(f"Projected total overhead (sum over attacks): {res.overhead_total:.2f}")
    print(f"Projected minimum protection (worst-case): {res.protection_min:.2f}")

    # 3) Build transform mix from best cfg weights (Mapping.csv -> variant_generator2 functions)
    transform_mix = build_transform_mix_from_cfg(db, res.best_cfg, ATTACKS)

    if not transform_mix:
        # Hard fallback: avoid crashing if mapping is incomplete
        print("\n[WARNING] transform_mix empty (check Mapping.csv transform_name entries). Falling back to uniform defaults.")
        transform_mix = None  # generator will use its default list uniformly

    else:
        # Print the selected transforms
        print("\n=== Transform mix used by generator ===")
        for tf, w in sorted(transform_mix.items(), key=lambda x: -x[1]):
            print(f"- {tf.__name__}: {w:.4f}")

    # 4) Generate variants using the GA-chosen knobs
    out_funcs = vg.generate_variants_for_results(
        funcs,
        results,
        num_variants=res.best_cfg.num_variants,
        same_variants=bool(res.best_cfg.same_variants),
        transforms_per_variant=res.best_cfg.transforms_per_variant,
        transform_weights=transform_mix,
    )

    # 5) Write final .s
    write_functions(out_funcs, OUTPUT_S)
    print(f"\n[OK] Wrote diversified assembly to: {OUTPUT_S}")
'''

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
        #transform_fence_between_store_load: 1,
        #transform_ssb_dependency_chain_barrier: 0.15,
        #transform_retpoline_rewrite: 1,
    }

    out = generate_variants_for_results(
        funcs,
        results,
        num_variants=10,
        same_variants=False,
        transforms_per_variant=1,   # N trasformations per variant
        transform_weights=transform_mix,
    )

    write_functions(out, 'SpectreV1Tests/spectreHPSfence10.s')


if __name__ == "__main__":
    main()


if __name__ == "__main__":
    main()
