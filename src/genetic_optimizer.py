from __future__ import annotations
from dataclasses import dataclass
from typing import Dict, List, Optional, Tuple, Any
import math

try:
    import pygad
except ImportError as e:
    raise ImportError(
        "Missing dependency 'pygad'. Install with: pip install pygad"
    ) from e

from fitness_db import FitnessDB, Config, Prediction


@dataclass
class GAResult:
    """Returned by run(): best config + metrics."""
    best_cfg: Config
    fitness: float
    overhead_total: float
    protection_min: float
    per_attack: Dict[str, Prediction]


class GeneticOptimizer:
    """
    Genetic optimizer using PyGAD.

    It searches over a single global configuration (cfg), evaluated over one or more attacks.
    For each attack a:
      - FitnessDB predicts (O_a, P_a) via local interpolation.
      - We sum overhead: O_total = sum_a O_a (as required by your professor).
      - We keep protection separate per-attack, but also compute a global protection
        as min_a P_a (robust/worst-case) to handle "unknown input .s".

    Constraints are handled via penalties in the fitness function.
    """

    def __init__(
        self,
        db: FitnessDB,
        attacks: Optional[List[str]] = None,
        # Objective mode:
        mode: str = "max_protection_under_overhead",  # or "min_overhead_under_protection"
        # Constraints (optional):
        overhead_budget: Optional[float] = None,
        min_global_protection: Optional[float] = None,
        per_attack_targets: Optional[Dict[str, float]] = None,
        # Search bounds (free range, but bounded for GA practicality):
        nv_bounds: Optional[Tuple[int, int]] = None,
        tpv_bounds: Optional[Tuple[int, int]] = None,
        # Penalty weights / scaling:
        overhead_weight: float = 0.5,
        distance_weight: float = 1.0,
        constraint_penalty: float = 50.0,
        # GA hyperparameters:
        num_generations: int = 120,
        sol_per_pop: int = 80,
        num_parents_mating: int = 20,
        mutation_percent_genes: int = 25,
        random_seed: Optional[int] = None,
    ):
        self.db = db
        self.attacks = attacks if attacks is not None else db.attacks_available()

        if not self.attacks:
            raise ValueError("No attacks selected. Provide attacks or ensure Runs.csv contains attack_id values.")

        if mode not in ("max_protection_under_overhead", "min_overhead_under_protection"):
            raise ValueError("mode must be 'max_protection_under_overhead' or 'min_overhead_under_protection'")
        self.mode = mode

        self.overhead_budget = overhead_budget
        self.min_global_protection = min_global_protection
        self.per_attack_targets = per_attack_targets or {}

        # Weight columns define how many genes we have for transformation weights.
        self.weight_cols: List[str] = list(db.weight_cols)

        # Choose reasonable default bounds from data if user doesn't provide.
        # "Free range" means: allow values not in Runs.csv, but we still need bounds.
        runs = db.runs
        nv_min_obs = int(runs["num_variants"].min())
        nv_max_obs = int(runs["num_variants"].max())
        tpv_min_obs = int(runs["transforms_per_variant"].min())
        tpv_max_obs = int(runs["transforms_per_variant"].max())

        # Default: extend upper bounds to allow exploration beyond observed values.
        # Distance penalty will discourage too-far extrapolation.
        self.nv_min, self.nv_max = nv_bounds if nv_bounds else (max(1, nv_min_obs), max(2, nv_max_obs * 4))
        self.tpv_min, self.tpv_max = tpv_bounds if tpv_bounds else (max(1, tpv_min_obs), max(2, tpv_max_obs * 3))

        self.overhead_weight = float(overhead_weight)
        self.distance_weight = float(distance_weight)
        self.constraint_penalty = float(constraint_penalty)

        self.num_generations = int(num_generations)
        self.sol_per_pop = int(sol_per_pop)
        self.num_parents_mating = int(num_parents_mating)
        self.mutation_percent_genes = int(mutation_percent_genes)
        self.random_seed = random_seed

        # Internal: keep best metrics for reporting.
        self._best_seen: Optional[GAResult] = None

        # Build gene_space:
        # [num_variants, transforms_per_variant, same_variants, w_0, ..., w_k-1]
        # We use continuous spaces and then round/clamp integers in decode().
        self.gene_space: List[Any] = []
        self.gene_space.append({"low": self.nv_min, "high": self.nv_max})   # num_variants
        self.gene_space.append({"low": self.tpv_min, "high": self.tpv_max}) # transforms_per_variant
        self.gene_space.append([0, 1])                                      # same_variants
        for _ in self.weight_cols:
            self.gene_space.append({"low": 0.0, "high": 1.0})               # raw weight

        self.num_genes = len(self.gene_space)

    # -------------------------
    # Decoding: GA solution -> Config
    # -------------------------

    def decode(self, solution: List[float]) -> Config:
        """
        Converts a PyGAD solution vector into your Config object.
        - Rounds/clamps integer knobs
        - Keeps weights as floats (FitnessDB will mask+normalize per attack)
        """
        nv = int(round(float(solution[0])))
        tpv = int(round(float(solution[1])))
        sv = int(round(float(solution[2])))

        nv = max(self.nv_min, min(self.nv_max, nv))
        tpv = max(self.tpv_min, min(self.tpv_max, tpv))
        sv = 1 if sv >= 1 else 0

        weights = {}
        base = 3
        for i, col in enumerate(self.weight_cols):
            w = float(solution[base + i])
            # allow GA to set everything to 0; FitnessDB handles normalization
            weights[col] = max(0.0, w)

        return Config(
            num_variants=nv,
            transforms_per_variant=tpv,
            same_variants=sv,
            weights=weights,
        )


    # -------------------------
    # Fitness core
    # -------------------------

    def _evaluate_cfg(self, cfg: Config) -> Tuple[float, float, float, Dict[str, Prediction]]:
        """
        Returns:
          overhead_total, protection_min, distance_penalty_total, per_attack_predictions
        """
        per_attack: Dict[str, Prediction] = {}
        overhead_sum = 0.0
        protections: List[float] = []
        distance_pen_total = 0.0

        for a in self.attacks:
            pred = self.db.predict(a, cfg)
            per_attack[a] = pred
            overhead_sum += pred.overhead_pct
            protections.append(pred.protection_pct)
            distance_pen_total += pred.distance_penalty

        protection_min = min(protections) if protections else 0.0

        n_attacks = max(1, len(self.attacks))
        overhead_total = overhead_sum / float(n_attacks)

        return overhead_total, protection_min, distance_pen_total, per_attack

    def _constraint_violation_penalty(self, overhead_total: float, protection_min: float, per_attack: Dict[str, Prediction]) -> float:
        """
        Computes penalties if constraints are not satisfied.
        Uses linear penalties scaled by constraint_penalty.
        """
        pen = 0.0

        # Overhead budget constraint (if any)
        if self.overhead_budget is not None and overhead_total > self.overhead_budget:
            pen += self.constraint_penalty * (overhead_total - self.overhead_budget)

        # Global protection constraint (worst-case) (if any)
        if self.min_global_protection is not None and protection_min < self.min_global_protection:
            pen += self.constraint_penalty * (self.min_global_protection - protection_min)

        # Per-attack protection targets
        for a, target in self.per_attack_targets.items():
            if a not in per_attack:
                # If user asks a target for an attack not included, treat as violation.
                pen += self.constraint_penalty * target
                continue
            pa = per_attack[a].protection_pct
            if pa < target:
                pen += self.constraint_penalty * (target - pa)

        return pen

    def fitness_func(self, ga_instance, solution, solution_idx) -> float:
        """
        PyGAD fitness callback.

        IMPORTANT: PyGAD maximizes fitness.

        We support two common modes:

        1) max_protection_under_overhead:
           - Score grows with protection_min (worst-case)
           - Penalize overhead_total and distance_penalty_total
           - Apply constraint penalties if constraints exist

        2) min_overhead_under_protection:
           - Score is higher when overhead_total is smaller (negative overhead)
           - Still penalize distance and constraint violations
        """
        cfg = self.decode(solution)

        overhead_total, protection_min, distance_pen_total, per_attack = self._evaluate_cfg(cfg)

        # Base score depends on mode.
        if self.mode == "max_protection_under_overhead":
            # Maximize worst-case protection; subtract overhead and distance.
            score = (
                protection_min
                - self.overhead_weight * overhead_total
                - self.distance_weight * distance_pen_total
            )
        else:
            # Minimize overhead; turn it into a maximization problem by negating.
            # Keep distance penalty and also encourage higher protection softly.
            score = (
                - overhead_total
                + 0.1 * protection_min
                - self.distance_weight * distance_pen_total
            )

        # Hard-ish constraints via additional penalties.
        score -= self._constraint_violation_penalty(overhead_total, protection_min, per_attack)

        # Track best seen (for reporting)
        if self._best_seen is None or score > self._best_seen.fitness:
            self._best_seen = GAResult(
                best_cfg=cfg,
                fitness=float(score),
                overhead_total=float(overhead_total),
                protection_min=float(protection_min),
                per_attack=per_attack,
            )

        return float(score)

    # -------------------------
    # Run GA
    # -------------------------

    def run(self) -> GAResult:
        """
        Runs the GA and returns the best configuration found + metrics.
        """
        ga = pygad.GA(
            num_generations=self.num_generations,
            sol_per_pop=self.sol_per_pop,
            num_parents_mating=self.num_parents_mating,
            fitness_func=self.fitness_func,
            gene_space=self.gene_space,
            num_genes=self.num_genes,
            mutation_percent_genes=self.mutation_percent_genes,
            parent_selection_type="tournament",
            crossover_type="single_point",
            mutation_type="random",
            keep_parents=2,
            random_seed=self.random_seed,
            allow_duplicate_genes=True,  # weights can repeat; we'll normalize later in FitnessDB
        )

        ga.run()

        # Best solution from PyGAD (in case it differs from our tracked best)
        solution, sol_fitness, _ = ga.best_solution()
        best_cfg = self.decode(solution)

        overhead_total, protection_min, _, per_attack = self._evaluate_cfg(best_cfg)

        # Prefer tracked best metrics if present and better.
        if self._best_seen is not None and self._best_seen.fitness >= float(sol_fitness):
            return self._best_seen

        return GAResult(
            best_cfg=best_cfg,
            fitness=float(sol_fitness),
            overhead_total=float(overhead_total),
            protection_min=float(protection_min),
            per_attack=per_attack,
        )

# -------------------------------------------
# Helper function to prin normalized weights
# -------------------------------------------

def normalized_weights_for_attack(db, attack_id, cfg):
    """
    Returns the weights actually used by FitnessDB for this attack:
    - applies enabled_for_attack mask
    - normalizes to sum to 1 (unless all zeros)
    """
    w_vec = db._mask_and_normalize_weights(attack_id, cfg.weights)
    return {col: float(w_vec[i]) for i, col in enumerate(db.weight_cols)}


'''
# -------------------------
# Usage example
# -------------------------
if __name__ == "__main__":
    # Example:
    #   python ga_optimizer.py
    #
    # You can adapt the parameters as you wish or wrap this into a CLI later.
    db = FitnessDB(
        runs_csv="Thesis - Runs.csv",
        baselines_csv="Thesis - Baselines.csv",
        mapping_csv="Thesis - Mapping.csv",
        penalty_lambda=1.0,
    )

    opt = GeneticOptimizer(
        db=db,
        attacks=["spectre_v1"],   # or: ["spectre_v1", "spectre_v4", "meltdown"]
        mode="max_protection_under_overhead", # or "min_overhead_under_protection"
        overhead_budget=24.0,
        min_global_protection=None,  # e.g., 50.0 when you have V1+V4
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

    print("\n=== Normalized weights per attack (used in fitness) ===")
    for a in opt.attacks:
        w = normalized_weights_for_attack(db, a, res.best_cfg)
        s = sum(w.values())
        # print only non-zeros to keep it readable
        w_nz = {k: v for k, v in w.items() if v > 1e-9}
        print(f"- {a}: sum={s:.2f} weights={w_nz}")

    print("\n=== Total results ===")
    print(f"Fitness: {res.fitness:.2f}, total overhead: {res.overhead_total:.2f}, Minimum protection: {res.protection_min:.2f}")
    for a, p in res.per_attack.items():
        print(f"- {a}: \n\tprojected overhead={p.overhead_pct:.2f} \n\tprojected protection={p.protection_pct:.2f} "
              f"\n\tstolen_bytes_pct={p.bytes_stolen_pct:.2f} \n\tdist_pen={p.distance_penalty:.2f}")
'''
