module

public import Mathlib.Analysis.InnerProductSpace.PiL2
public import Mathlib.Combinatorics.SimpleGraph.Coloring.Vertex
public import Mathlib.Analysis.Real.Sqrt

public section

/-!
# Advertised statement

Erdős Problem 704 (variant): the chromatic number of the unit distance graph on `ℝⁿ`
is finite, and bounded by `(2 + √n)ⁿ`.

The definition of `unitDistanceGraph` is copied verbatim from the statement in
google-deepmind/formal-conjectures (`FormalConjectures/ErdosProblems/704.lean`).
-/

namespace Erdos704Cube

/--
The unit distance graph $G_n$ on $\mathbb{R}^n$: two points are adjacent if and only if the
distance between them is $1$.
-/
@[expose] def unitDistanceGraph (n : ℕ) : SimpleGraph (EuclideanSpace ℝ (Fin n)) where
  Adj x y := dist x y = 1
  symm.symm x y := by simp [dist_comm]

/--
The trivial colouring (by tiling with cubes) gives
$$\chi(G_n) \leq (2 + \sqrt{n})^n.$$
In particular $\chi(G_n)$ is finite for every $n$.
-/
theorem cube_colouring :
    ∀ n : ℕ, ∃ k : ℕ, (unitDistanceGraph n).Colorable k ∧
      (k : ℝ) ≤ (2 + Real.sqrt n) ^ n := by
  sorry

end Erdos704Cube
