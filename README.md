# Erdős Problem 704: cube colouring bound

Lean 4 / Mathlib proof that the unit distance graph on ℝⁿ has a proper colouring with at most
`(2 + √n)ⁿ` colours (hence a finite chromatic number). This is the classical trivial upper bound
from [Erdős Problem 704](https://www.erdosproblems.com/704); nothing new is claimed.

The statement is the one from
[google-deepmind/formal-conjectures](https://github.com/google-deepmind/formal-conjectures)
(`FormalConjectures/ErdosProblems/704.lean`, `erdos_704.variants.cube_colouring`), with the
definition of the graph copied verbatim.

**AI disclosure.** The proof was written by Claude (Anthropic) in an unattended agent loop and
checked mechanically (Lean kernel, axiom audit). No human wrote or reviewed it line by line. See
`formalization.yaml` for the full disclosure.

## Layout

- `Challenge.lean`: the audited statement (with `sorry`).
- `Solution.lean`: the same declaration, proved.
- `Erdos704Cube/Basic.lean`: the proof development.
- `comparator.json`: declarations that Comparator checks for equality.
- `formalization.yaml`: Palomar metadata.

## Checking

```
lake exe cache get
lake build
./scripts/verify-comparator.sh   # needs Linux and bwrap
```

## Submission

To be submitted to Palomar through the [submission form](https://submit.palomar-registry.org/)
with the full commit SHA of the snapshot.

## License

Apache-2.0, see `LICENSE`. This repository started from the Palomar submission template.

## Notes on CI

The CI runs the template's metadata, build and Comparator checks. The template's optional
doc-gen4 job (`docbuild/`) is not run here: it failed in CI for a reason not investigated, and
Palomar does not require it.
