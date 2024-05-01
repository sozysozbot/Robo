import Game.Metadata

World "Function"
Level 14


Title "Range of Injective"


Introduction
"
For an injective function `f : A → B` the fibres of the elements in the range
are singletons.
"

open Function Set

#check Set.singleton

Statement Injective.exists_unique_of_mem_range {f : A → B} (hf : Injective f)
    {b : B} (hb : b ∈ range f) :
    ∃! a, f a = b := by
  obtain ⟨a, ha⟩ := hb
  use a
  constructor
  · exact ha
  · intro a' ha'
    apply hf
    rw [ha',ha]