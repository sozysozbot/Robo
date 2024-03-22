-- import Game.Metadata
import GameServer.Commands


import Game.Levels.MatrixTrace.L02_eBasisRescale



World "Trace"
Level 3

Title "Trace"

Introduction
"
`stdBasisMatrix i j c` spans the vector space of matrices of a given size. This is witnessed by `matrix_eq_sum_std_basis`. In this level, you will show that the identity matrix is the sum of the matrices `E i i`.

"

open Nat Matrix BigOperators StdBasisMatrix

-- Not used later on, can be safely removed, or given as a hint
lemma tmp0 {n : ℕ} {i : Fin n} :
    E i i = stdBasisMatrix i i ((1 : Matrix (Fin n) (Fin n) ℝ) i i) := by
  rw [one_apply_eq]

lemma tmp2 {n : ℕ} : ∑ i : Fin (n + 1), E i i = 1 := by
  rw [matrix_eq_sum_std_basis 1]
  congr
  ext i r s
  rw [← Finset.sum_subset (s₁ := {i}) (Finset.subset_univ {i})]
  · simp only [Finset.sum_singleton, one_apply_eq]
  · intro x h₁ h₂
    have h₃ : i ≠ x := by
      simp [Finset.mem_singleton] at h₂
      symm
      exact h₂
    simp [one_apply, if_neg h₃]
