from __future__ import annotations
from dataclasses import dataclass
from typing import Dict, List, Optional, Tuple

import numpy as np
import pandas as pd

from sklearn.neighbors import KNeighborsRegressor
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import StandardScaler


# -----------------------------
# Data structures
# -----------------------------

@dataclass(frozen=True)
class Config:
    """
    Candidate configuration proposed by the GA.

    - num_variants: number of diversified variants (free range, not necessarily present in Runs.csv)
    - transforms_per_variant: how many transformations to apply per variant (free range)
    - same_variants: boolean flag (0/1) controlling whether variants are identical or not
    - weights: dictionary weight_col -> weight (e.g., {"w_nop":0.2, "w_lea":0.3, ...})
      NOTE: we will mask and normalize these weights per-attack based on Mapping.csv.
    """
    num_variants: int
    transforms_per_variant: int
    same_variants: int  # 0/1
    weights: Dict[str, float]


@dataclass(frozen=True)
class Prediction:
    """
    Output of the surrogate model for one attack.

    - overhead_pct: predicted overhead (%)
    - bytes_stolen_pct: predicted stolen bytes in % of total (or whatever your metric encodes)
    - protection_pct: derived from bytes_stolen_pct and baselines (if available)
    - distance_score: mean distance to K nearest neighbors (in standardized feature space)
    - distance_penalty: a penalty computed from distance_score (to discourage extrapolation)
    """
    overhead_pct: float
    bytes_stolen_pct: float
    protection_pct: float
    distance_score: float
    distance_penalty: float


# -----------------------------
# Fitness DB with local interpolation
# -----------------------------

class FitnessDB:
    """
    FitnessDB implements a *local interpolation* surrogate model per attack_id.

    Key idea:
      - My Runs.csv contains discrete measured points for each attack.
      - For each attack_id we train a KNN regressor that interpolates locally:
          y = f(x) where x encodes (num_variants, transforms_per_variant, same_variants, w_*)
        and y are (cycles_overhead_pct, bytes_stolen_pct).
      - For configurations not present in Runs.csv, we can still estimate values
        by taking a distance-weighted average of nearby measured points.

    Strategy (free range + distance penalty):
      - The GA is free to propose num_variants / transforms_per_variant not present in Runs.csv.
      - We compute a distance_score = mean distance to K nearest neighbors.
      - We turn it into a distance_penalty to penalize "going too far" from data support.
        The GA should include this penalty inside its objective/constraints.

    Per-attack enabled weights (Mapping.csv):
      - Some transformations are enabled only for some attacks.
      - For each attack_id we "mask" weights: disabled weights are forced to 0.
      - Then we renormalize (so the remaining enabled weights still sum to 1).
      - IMPORTANT: we apply the same mask+renormalization both for training rows and predictions,
        ensuring consistency.
    """

    def __init__(
        self,
        runs_csv: str,
        baselines_csv: Optional[str] = None,
        mapping_csv: Optional[str] = None,
        n_neighbors: Optional[int] = None,
        metric_p: int = 1,  # 1=L1 distance, 2=L2 distance
        penalty_lambda: float = 1.0,
    ):
        """
        Parameters
        ----------
        runs_csv:
            Path to Runs.csv (your measured data).
        baselines_csv:
            Optional path to Baselines.csv (to compute protection_pct).
        mapping_csv:
            Optional path to Mapping.csv (to apply enabled_for_attack masks).
        n_neighbors:
            K used by the KNN regressor; if None, we choose a reasonable default per attack.
        metric_p:
            Minkowski distance parameter: 1 = L1 (often better in higher dims), 2 = L2.
        penalty_lambda:
            Scaling factor for the distance penalty (penalty increases with distance).
            The GA can tune this value (or even set it to 0 to disable the penalty).
        """
        self.penalty_lambda = float(penalty_lambda)

        # --- Load Runs.csv ---
        runs = pd.read_csv(runs_csv)
        runs = self._parse_eu_numbers(runs, ignore_cols={"attack_id", "run_id", "notes"})
        self.runs = runs

        # Validate schema
        required = {
            "attack_id",
            "num_variants",
            "transforms_per_variant",
            "same_variants",
            "cycles_overhead_pct",
            "bytes_stolen_pct",
        }
        missing = required - set(runs.columns)
        if missing:
            raise ValueError(f"Runs.csv missing columns: {sorted(missing)}")

        # Detect all weight columns (w_*)
        self.weight_cols: List[str] = [c for c in runs.columns if c.startswith("w_")]

        # Precompute scaling denominators from available data
        # (free range is allowed: values can exceed 1.0 -> distances grow -> penalty grows)
        self._max_nv = float(runs["num_variants"].max() or 1.0)
        self._max_tpv = float(runs["transforms_per_variant"].max() or 1.0)

        # --- Load Baselines.csv (optional) ---
        self.baselines = None
        if baselines_csv is not None:
            b = pd.read_csv(baselines_csv)
            b = self._parse_eu_numbers(b, ignore_cols={"attack_id"})
            if "attack_id" not in b.columns:
                raise ValueError("Baselines.csv must contain 'attack_id'")
            self.baselines = b.set_index("attack_id")

        # --- Load Mapping.csv (optional) ---
        # Build:
        #  - enabled_cols_by_attack: attack_id -> set of enabled weight columns
        #  - transform_name_by_weight_col: used later when building transform_mix
        self.enabled_cols_by_attack: Dict[str, set] = {}
        self.transform_name_by_weight_col: Dict[str, str] = {}

        if mapping_csv is not None:
            m = pd.read_csv(mapping_csv)
            m = self._parse_eu_numbers(m, ignore_cols={"attack_id", "weight_col", "transform_name", "notes"})
            m = m.dropna(subset=["attack_id", "weight_col", "transform_name"], how="any")

            # enabled_for_attack can be missing; in that case, treat everything as enabled
            if "enabled_for_attack" in m.columns:
                for aid, df in m.groupby("attack_id"):
                    enabled = set(df.loc[df["enabled_for_attack"] == 1, "weight_col"].astype(str).tolist())
                    # If no enabled specified for that attack, fallback to "all weights enabled"
                    self.enabled_cols_by_attack[aid] = enabled if enabled else set(self.weight_cols)

            self.transform_name_by_weight_col = (
                m.drop_duplicates(subset=["weight_col"])
                 .set_index("weight_col")["transform_name"]
                 .astype(str)
                 .to_dict()
            )

        # --- Train one interpolator per attack_id ---
        # We use a multi-output KNN regressor to predict both targets at once:
        #   y0 = cycles_overhead_pct
        #   y1 = bytes_stolen_pct
        self.models: Dict[str, Pipeline] = {}
        self.y_cache: Dict[str, np.ndarray] = {}  # attack_id -> y array (n, 2), used for diagnostics if needed

        for attack_id, df in runs.groupby("attack_id"):
            df = df.reset_index(drop=True)

            # Build training matrix with per-attack masking+renormalization
            X = np.vstack([self._row_to_features(attack_id, df.loc[i]) for i in range(len(df))])
            y = np.vstack([
                df["cycles_overhead_pct"].astype(float).to_numpy(),
                df["bytes_stolen_pct"].astype(float).to_numpy(),
            ]).T  # (n, 2)

            # Choose K if not provided: small datasets benefit from smaller K
            if n_neighbors is None:
                k = int(round(np.sqrt(len(df))))
                k = max(3, min(10, k))
            else:
                k = int(n_neighbors)
            k = min(k, len(df))

            model = Pipeline([
                ("scaler", StandardScaler()),
                ("knn", KNeighborsRegressor(
                    n_neighbors=k,
                    weights="distance",
                    p=metric_p,  # L1 vs L2
                )),
            ])
            model.fit(X, y)

            self.models[attack_id] = model
            self.y_cache[attack_id] = y

    # -----------------------------
    # Parsing / utilities
    # -----------------------------

    @staticmethod
    def _parse_eu_numbers(df: pd.DataFrame, ignore_cols: set) -> pd.DataFrame:
        """
        Converts EU decimal strings like "31,79" into numeric 31.79
        for columns that are mostly parseable as numbers.
        """
        out = df.copy()
        for c in out.columns:
            if c in ignore_cols:
                continue
            if out[c].dtype == object:
                s = out[c].astype(str).str.replace(",", ".", regex=False)
                parsed = pd.to_numeric(s, errors="coerce")
                # keep parsed if it parses "enough" values
                if parsed.notna().mean() >= 0.3:
                    out[c] = parsed
        return out

    def attacks_available(self) -> List[str]:
        """Returns the list of attack_id values for which we have a trained interpolator."""
        return sorted(self.models.keys())

    def enabled_weight_cols(self, attack_id: str) -> set:
        """
        Returns the set of enabled w_* columns for a given attack_id.
        If Mapping.csv is not provided (or no rule for that attack), all weights are enabled.
        """
        return self.enabled_cols_by_attack.get(attack_id, set(self.weight_cols))

    # -----------------------------
    # Feature construction (with per-attack masking)
    # -----------------------------

    def _mask_and_normalize_weights(self, attack_id: str, weights: Dict[str, float]) -> np.ndarray:
        """
        Applies per-attack masking:
          - if a w_* is disabled for this attack_id => force to 0
          - then normalize so that enabled weights sum to 1 (unless all are 0)

        Returns a dense numpy vector in the fixed order self.weight_cols.
        """
        enabled = self.enabled_weight_cols(attack_id)

        w = np.zeros(len(self.weight_cols), dtype=float)
        for i, col in enumerate(self.weight_cols):
            if col not in enabled:
                w[i] = 0.0
                continue
            w[i] = max(0.0, float(weights.get(col, 0.0) or 0.0))

        s = float(w.sum())
        if s > 0:
            w /= s
        return w

    def _encode_common(self, num_variants: float, transforms_per_variant: float, same_variants: float) -> np.ndarray:
        """
        Encodes the scalar knobs into stable features.

        We use:
          - log1p(num_variants) normalized by log1p(max observed nv)
          - transforms_per_variant normalized by max observed tpv
          - same_variants as-is (0/1)

        NOTE: Since range is free, these normalized features may exceed 1.0
        if the GA proposes values larger than what we've measured.
        This increases neighbor distances and thus increases distance_penalty.
        """
        nv_feat = np.log1p(float(num_variants)) / max(1e-12, np.log1p(self._max_nv))
        tpv_feat = float(transforms_per_variant) / max(1e-12, self._max_tpv)
        sv_feat = float(same_variants)
        return np.array([nv_feat, tpv_feat, sv_feat], dtype=float)

    def _row_to_features(self, attack_id: str, row: pd.Series) -> np.ndarray:
        """
        Converts one training row into the feature vector x.
        IMPORTANT: weights are masked+normalized per-attack here, too.
        """
        scalars = self._encode_common(
            num_variants=row["num_variants"],
            transforms_per_variant=row["transforms_per_variant"],
            same_variants=row["same_variants"],
        )

        row_w = {c: float(row.get(c, 0.0) or 0.0) for c in self.weight_cols}
        w_feat = self._mask_and_normalize_weights(attack_id, row_w)

        return np.concatenate([scalars, w_feat], axis=0)

    def _cfg_to_features(self, attack_id: str, cfg: Config) -> np.ndarray:
        """
        Converts a GA candidate config into the feature vector x.
        We apply per-attack masking+normalization on cfg.weights.
        """
        scalars = self._encode_common(
            num_variants=cfg.num_variants,
            transforms_per_variant=cfg.transforms_per_variant,
            same_variants=cfg.same_variants,
        )
        w_feat = self._mask_and_normalize_weights(attack_id, cfg.weights)
        return np.concatenate([scalars, w_feat], axis=0)

    # -----------------------------
    # Protection and distance penalty
    # -----------------------------

    def _protection_pct(self, attack_id: str, bytes_stolen_pct: float) -> float:
        """
        Converts bytes_stolen_pct into a protection metric (0..100).

        If Baselines.csv provides bytes_stolen_unprotected_pct for this attack:
          protection = 100*(1 - bytes_stolen_pct / bytes_stolen_unprotected_pct)

        Otherwise fallback to:
          protection = 100 - bytes_stolen_pct
        """
        b = self.baselines
        if b is None or attack_id not in b.index:
            return float(np.clip(100.0 - bytes_stolen_pct, 0.0, 100.0))

        if "bytes_stolen_unprotected_pct" not in b.columns:
            return float(np.clip(100.0 - bytes_stolen_pct, 0.0, 100.0))

        base = float(b.loc[attack_id, "bytes_stolen_unprotected_pct"])
        if not np.isfinite(base) or base <= 0:
            return float(np.clip(100.0 - bytes_stolen_pct, 0.0, 100.0))

        return float(np.clip(100.0 * (1.0 - bytes_stolen_pct / base), 0.0, 100.0))

    def distance_penalty(self, distance_score: float) -> float:
        """
        Strategy A: convert 'distance from data' into a penalty.

        distance_score is the *mean* distance to the K nearest neighbors in the
        standardized feature space (i.e., after StandardScaler).

        A simple, effective penalty is linear:
            penalty = penalty_lambda * distance_score

        If you want a bounded penalty, you could replace it with:
            penalty = penalty_lambda * (distance_score / (1 + distance_score))

        For now we keep it linear and let the GA tune penalty_lambda.
        """
        return self.penalty_lambda * float(distance_score)

    # -----------------------------
    # Prediction
    # -----------------------------

    def predict(self, attack_id: str, cfg: Config) -> Prediction:
        """
        Predict overhead/protection for one attack_id using local interpolation.

        Returns:
          Prediction(overhead_pct, bytes_stolen_pct, protection_pct, distance_score, distance_penalty)

        Internals:
          - Build features x from cfg (with per-attack weight mask+normalize)
          - Predict y via kNN regression
          - Compute distance_score via kneighbors() using the same scaled space
          - Compute penalty from distance_score
        """
        if attack_id not in self.models:
            raise KeyError(f"No model/data for attack_id='{attack_id}'")

        model = self.models[attack_id]
        x = self._cfg_to_features(attack_id, cfg).reshape(1, -1)

        # Predict multi-output:
        #   pred[0] = overhead, pred[1] = bytes_stolen
        pred = model.predict(x)[0]
        overhead = float(max(0.0, pred[0]))
        bytes_stolen = float(np.clip(pred[1], 0.0, 100.0))
        protection = self._protection_pct(attack_id, bytes_stolen)

        # Compute distance_score = mean distance to K nearest neighbors
        scaler: StandardScaler = model.named_steps["scaler"]
        knn: KNeighborsRegressor = model.named_steps["knn"]

        x_scaled = scaler.transform(x)  # IMPORTANT: kneighbors sees scaled space
        dists, _ = knn.kneighbors(x_scaled, n_neighbors=knn.n_neighbors, return_distance=True)
        # distance_score = float(np.mean(dists)) # mean of the distances of the k-nearest neighbors
        distance_score = float(dists[0, -1]) # distance from the k-th neighbor (farthest of the chosen k)

        penalty = self.distance_penalty(distance_score)

        return Prediction(
            overhead_pct=overhead,
            bytes_stolen_pct=bytes_stolen,
            protection_pct=protection,
            distance_score=distance_score,
            distance_penalty=penalty,
        )

    def predict_many(self, cfg: Config, attacks: List[str]) -> Dict[str, Prediction]:
        """
        Predict for multiple attacks; useful for global constraints/objectives.
        """
        out: Dict[str, Prediction] = {}
        for a in attacks:
            out[a] = self.predict(a, cfg)
        return out

    def predict_global(self, cfg: Config, attacks: List[str]) -> Tuple[float, Dict[str, Prediction]]:
        """
        Convenience helper used by the GA fitness:
          - predicts per-attack
          - returns O_total = sum(overhead_pct per attack)
        Protections remain per-attack in the returned dict (as requested by your professor).
        """
        per_attack = self.predict_many(cfg, attacks)
        overhead_total = float(sum(p.overhead_pct for p in per_attack.values()))
        return overhead_total, per_attack
