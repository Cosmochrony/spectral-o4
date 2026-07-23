# O4 — Subdiffusive Valence Growth under Bounded Relational Flux

This repository contains the source of the O4 Cosmochrony paper:

*Subdiffusive Valence Growth under Bounded Relational Flux: Structural
Derivation of the Cascade Exponent \(\beta\)*.

## Scope

O4 studies a changing-valence family of Lubotzky–Phillips–Sarnak (LPS)
Ramanujan graphs. It asks what bounded relational flux implies for the growth
of the effective valence \(p(n)\) along that expander cascade.

The manuscript does not determine the phenomenological value of \(\beta\).
Its proved result is an upper bound under an explicit closure hypothesis.

## Structural inputs

The argument uses:

- the named bounded-capacity axiom [A-cap],
  \[
  |\partial_t\chi_v|\le c_\chi;
  \]
- the Cheeger isoperimetric bound for the LPS relaxation family;
- the expander-scoped closure hypothesis
  \[
  p(n)\propto N(n),
  \]
  where \(N(n)\) counts cumulatively explored relational configurations.

The proportionality is a hypothesis, not a microscopic dynamical law.

## Main result

The flux and Cheeger estimates give

\[
\Delta N(n)\lesssim c_\chi\sqrt{p(n)}.
\]

Under the valence–exploration closure, this becomes

\[
\Delta p(n)\lesssim c_\chi\sqrt{p(n)},
\]

and integration yields

\[
p(n)\lesssim \frac14 c_\chi^2 n^2.
\]

Thus super-quadratic valence growth is excluded. In the rescaled convention
used by the O-series, the corresponding structural statement is
\(\beta\le 1\).

## Epistemic status

Established in the manuscript:

- the LPS Cheeger/front estimate;
- the conditional quadratic upper bound;
- exclusion of super-quadratic growth under [A-cap] and the named closure.

Not established:

- the numerical window \(\beta^*\in(0.09,0.13)\);
- a microscopic derivation of the LPS closure hypothesis;
- a native Heisenberg capacity-to-rate law.

## Transfer boundary

The closure \(p(n)\propto N(n)\) is meaningful for the changing-valence LPS
model analysed here. It does not transfer to the fixed-degree Heisenberg BFS
cascade. The native audit in the
[Span-Growth Note](https://doi.org/10.5281/zenodo.21480521) refutes the
required proportionality for the two native realisations present in the
frozen corpus.

Accordingly, O4 remains a valid expander-scoped conditional theorem. It is not
a derivation of
\[
\beta^*=\frac{1}{\delta_{\mathrm{pair}}+\tfrac12}
\]
from the Heisenberg pair-capacity exponent.

## Repository contents

- `tex/SpectralO4.tex` — manuscript source
- `tex/cosmochrony-bibliography.bib` — programme bibliography
- `code/` — numerical and figure-generation material, when present
- `out/SpectralO4.pdf` — compiled manuscript

## Citation

J. Beau, *Subdiffusive Valence Growth under Bounded Relational Flux:
Structural Derivation of the Cascade Exponent*, Zenodo, 2026.
DOI: [10.5281/zenodo.19101472](https://doi.org/10.5281/zenodo.19101472).

## Acknowledgements

Portions of the analytical and editorial development benefited from iterative
interactions with large language models used as research assistants. All
scientific claims and interpretations remain the author's responsibility.
