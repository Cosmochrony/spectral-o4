# O4 — Bounded Relational Flux and Ramanujan Expansion Do Not Yet Yield a Cascade-Exponent Bound

This repository contains the source of the O4 Cosmochrony paper:

*Bounded Relational Flux and Ramanujan Expansion Do Not Yet Yield a Cascade-Exponent Bound*.

## Scope

O4 examines whether the Born–Infeld flux constraint, combined with the Cheeger isoperimetric
inequality for a changing-valence family of Lubotzky–Phillips–Sarnak (LPS) Ramanujan graphs,
forces a structural upper bound on the cascade exponent \(\beta\) governing the growth of the
effective valence \(p(n)\) along that expander cascade. It does not, by the specific argument
examined.

## Structural inputs

The argument audited uses:

- the named bounded-capacity axiom [A-cap],
  \[
  |\partial_t\chi_v|\le c_\chi;
  \]
- the Cheeger isoperimetric bound for the LPS relaxation family;
- the expander-scoped closure hypothesis
  \[
  p(n)\propto N(n),
  \]
  where \(N(n)\) is meant to count cumulatively explored relational configurations.

The proportionality is a hypothesis, not a microscopic dynamical law, and is not yet a
well-typed statement on this substrate: no combinatorial construction for \(N(n)\)'s host is
supplied independent of the argument that uses it.

## Main finding

The candidate argument for a growth bound — translate the flux bound into a front-size
estimate via the Cheeger inequality, then integrate under the closure hypothesis — contains
three independent defects, each sufficient on its own to invalidate it:

1. a boundary-type mismatch (an edge boundary and a vertex boundary are conflated);
2. a wrong-direction inequality (a Cheeger *lower* bound is used to produce an unsupported
   *upper* bound);
3. an asymptotic error (a diverging \(\sqrt{p(n)}\) factor is silently dropped).

A repaired argument would additionally require a persistent exploration host, an edgewise
flux-allocation law, a dimensionless activation threshold, and an activation-utilisation and
target-congestion mechanism — none supplied by [A-cap] or the LPS construction. A conditional
analysis further identifies a qualitative risk that the natural repair direction favours fast,
near-geometric exploration rather than the slow polynomial growth a structural bound requires.

No structural upper bound on \(\beta\) is established by this route. No claim is made that
such a bound is impossible.

## Epistemic status

Established:

- the three independent defects in the front-size argument (Section 3.2 of the manuscript);
- the closure hypothesis's well-typedness gap (Section 3.1);
- the itemised list of what a repair would additionally require (Section 3.3).

Not established, and explicitly not claimed:

- any structural upper bound on \(\beta\), of any strength;
- that no such bound could exist by some other argument;
- the numerical window \(\beta^*\in(0.09,0.13)\) (O3's phenomenological result, independent
  of this note);
- a microscopic derivation of the LPS closure hypothesis;
- a native Heisenberg capacity-to-rate law.

## Transfer boundary

The closure \(p(n)\propto N(n)\) is meaningful, if repaired, only for the changing-valence LPS
model examined here. It does not transfer to the fixed-degree Heisenberg BFS cascade. The
native audit in the [Span-Growth Note](https://doi.org/10.5281/zenodo.21480521) refutes the
required proportionality for the two native realisations present in the frozen corpus; O4
does not re-derive that result and is not affected by it beyond noting the scope boundary.

O4 is accordingly not a derivation of
\[
\beta^*=\frac{1}{\delta_{\mathrm{pair}}+\tfrac12}
\]
from the Heisenberg pair-capacity exponent, on either substrate.

## Reproduction

```
bash build.sh
```

is the documented reproduction command from a fresh clone. It creates a Python virtual
environment, installs the pinned versions in `code/requirements.txt`
(`numpy==2.5.1`, `matplotlib==3.11.1`), regenerates `code/fig1_km_contraction.pdf`
(the only figure format the manuscript uses) from `code/fig_km_contraction.py`, verifies the
regenerated file against `ARTIFACT_SHA256SUMS`, stops immediately if the checksum does not
match, and only then calls `compile.sh`. The figure-generation script fixes the PDF's
embedded creation timestamp so repeated runs are byte-identical.

```
bash compile.sh
```

runs only the LaTeX side (`pdflatex -> bibtex -> pdflatex x3`, the extra final pass needed
to stabilise cross-references on a cold build), assuming the figure already
exists; use this for iterating on the manuscript text without re-running the figure
generation. Both scripts write `out/SpectralO4.pdf` (git-ignored; regenerate from source
rather than expecting a committed copy). `compile.sh` requires a working TeX Live
installation with the standard `amsmath`, `amssymb`, `amsthm`, `hyperref`, `geometry`,
`booktabs`, `microtype`, `mathtools`, `graphicx`, `doi`, and `lmodern` packages; no pinned
TeX Live version is currently recorded for this repository.

## Repository contents

- `tex/SpectralO4.tex` — manuscript source
- `tex/cosmochrony-bibliography.bib` — programme bibliography
- `code/` — figure-generation script, pinned `requirements.txt`, and the figure it produces
- `ARTIFACT_SHA256SUMS` — checksums of the regenerated figure, checked by `build.sh`
- `build.sh` — full reproduction script: regenerate figure, verify checksum, compile (see
  Reproduction above)
- `compile.sh` — LaTeX-only compilation step, called by `build.sh`
- `out/` — compiled manuscript and build artefacts (git-ignored, generated by the scripts
  above)

## Citation

J. Beau, *Bounded Relational Flux and Ramanujan Expansion Do Not Yet Yield a
Cascade-Exponent Bound*, Zenodo, 2026.
DOI: [10.5281/zenodo.19101472](https://doi.org/10.5281/zenodo.19101472).

## Acknowledgements

Portions of the analytical and editorial development benefited from iterative interactions
with large language models used as research assistants. All scientific claims and
interpretations remain the author's responsibility.
