import Game.Metadata
import Game.Metadata.StructInstWithHoles
import Mathlib.GroupTheory.Subgroup.Basic

World "Quotient"
Level 1

Title "Quotient"

Introduction
"
A setoid structure on a type `A` provides a relation `r : A → A → Prop` which is congruence (aka equivalence relation). The congruence `r` tell us which elements of `A` are congruent to other elements of `A`.


We show that every function `f : A → B` induces a congruence on `A`: We say elements `x` and `y` of `A` are in the same fibre of `f` if `f x = f y`.
```
x ~ y ↔ f x = f y
```
This is a congruence on `A` denoted by `ker f`.

You might be familiar with the kernel of a group homomorphism. The kernel of a group homomorphism is the set of elements that are sent to the identity element of the codomain. The kernel of a group homomorphism is a subgroup of the domain.

In this level you show that these two notions of kernel coincide: Two elements `x` and `y` of `A` are kernel congruent if and only if their difference is in the kernel of `f`.

"

open Function Set Setoid

#check MonoidHom.mker
#check MonoidHom.ker
#check Con.ker_apply
#check AddCon.ker_apply

Statement {A B : Type*} [AddGroup A]  [AddGroup B] {f : A →+ B} {x y : A} :
    (ker f).Rel x y ↔ (x - y) ∈ f.ker := by
  constructor
  · intro h
    simp [ker_def] at h
    rw [← sub_eq_zero, ← f.map_sub] at h
    exact h
  · intro h
    simp [ker_def]
    rw [← sub_eq_zero, ← f.map_sub]
    exact h


-- alternate proof using more from mathlib
example {A B : Type*} [AddGroup A]  [AddGroup B] {f : A →+ B} {x y : A} :
    (ker f).Rel x y ↔ (x - y) ∈ f.ker := by
  simp_rw [AddMonoidHom.mem_ker f]
  simp only [map_sub]
  simp [ker_def]
  simp [sub_eq_zero]
