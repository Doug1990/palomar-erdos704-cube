module

public import Erdos704Cube

public section

/-!
# Proved solution

This module imports the full proof development. Comparator checks that the declarations below
have exactly the same statements as their counterparts in `Challenge.lean` and use only the
permitted axioms.
-/

namespace Erdos704Cube

theorem cube_colouring :
    ∀ n : ℕ, ∃ k : ℕ, (unitDistanceGraph n).Colorable k ∧
      (k : ℝ) ≤ (2 + Real.sqrt n) ^ n :=
  cube_colouring_proof

end Erdos704Cube
