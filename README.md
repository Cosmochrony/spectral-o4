This repository contains the source of the **O4** Cosmochrony paper  
*Projective Dynamics and Mass Closure: Unified Stabilisation Mechanism for All Generations*.

This work extends the **spectral relaxation programme** by resolving the final
open problem left by O3: the incomplete treatment of the central ADE level
$\lambda_2 = 1$ and the absence of a closed mass formula for all generations.

While **O3** provides a structural mechanism for amplifying mass ratios through
dynamic valence growth, it leaves one essential component unresolved: the
stabilisation of the central mode, which never exits the Kesten--McKay support.

The present work introduces a unified treatment combining:

- **support-exit dynamics** for $\lambda_1$ and $\lambda_3$
- **Kesten--McKay saturation dynamics** for $\lambda_2$

This yields a complete structural description of the three-generation mass spectrum.

# Core Result

The paper establishes a **unified stabilisation law** in which:

- modes with $\lambda \neq 1$ stabilise through **support exit**
- the central mode $\lambda_2 = 1$ stabilises through **spectral saturation**

The effective mass of each generation is determined by:

- an exit rank $n_{\mathrm{exit}}(\lambda)$ for off-central modes
- a saturation scale $n_{\mathrm{sat}}$ for the central mode

This produces a closed mapping:

$\lambda_i \longrightarrow M_i$

for all three ADE levels.

# Completion of the Mass Spectrum

O4 resolves the structural asymmetry identified in O3:

- $\lambda_3$ exits first → highest mass
- $\lambda_1$ exits second → intermediate mass
- $\lambda_2 = 1$ never exits → requires a distinct mechanism

The Kesten--McKay saturation mechanism provides:

- a finite effective stabilisation scale for $\lambda_2$
- a universal normalisation factor inherited from Step 4

This completes the triplet $(M_1, M_2, M_3)$.

# Unified Mass Formula

The resulting mass structure factorises into two components:

1. **Geometric amplification (O3)**  
   Controlled by spectral distance and $\beta$

2. **Saturation normalisation (KM mechanism)**  
   Fixing the central scale and anchoring the hierarchy

The combined expression yields:

- correct ordering
- correct scaling behaviour
- consistent normalisation across generations

# Resolution of the Closure Problem

O4 resolves the final limitation of the O-series:

- **Spectral Relaxation**  
  → structure identified, hierarchy invalid

- **O1**  
  → ordering restored

- **O3**  
  → hierarchy amplitude generated

- **O4**  
  → full mass spectrum closed

The hierarchy is now:

- structurally generated
- dynamically consistent
- fully defined across all generations

# Role of the Central Mode

A key conceptual result is the special status of $\lambda_2 = 1$:

- it lies at the midpoint of the spectral support
- it is invariant under support contraction
- it never undergoes exit

Its stabilisation therefore reflects:

- not geometric exclusion (exit)
- but **maximal symmetry under projection**

This explains the universality of the associated normalisation factor.

# Compatibility with Previous Steps

O4 preserves all prior structural results:

- ADE spectrum from **Spectral Stratigraphy**
- ordering from **O1**
- amplification from **O3**

It introduces no new spectral data and modifies only the stabilisation mechanism
of the central mode.

# Conceptual Structure

O4 completes the structural chain:

1. Spectral admissibility → mode selection
2. Spectral stratigraphy → discrete levels
3. Spectral relaxation → projective dynamics
4. O1 → ordering via support contraction
5. O3 → amplification via dynamic valence
6. O4 → closure via unified stabilisation

This yields a complete pipeline from spectrum to physical masses.

# Physical Interpretation

Mass emerges as a stabilisation phenomenon governed by two complementary mechanisms:

- **instability-driven exit** (for off-central modes)
- **symmetry-protected saturation** (for the central mode)

The hierarchy reflects the interplay between:

- distance from spectral symmetry
- rate of support contraction
- intrinsic saturation constraints

# What O4 Resolves

O4 provides:

- a complete mapping from ADE spectrum to masses
- a unified treatment of all three generations
- a structural origin for the central generation scale

It removes the last ambiguity in the mass-generation mechanism.

# Residual Open Problem

The only remaining structural unknown is:

- **Derivation of the exponent $\beta$**

Once $\beta$ is derived, the framework becomes fully predictive.

# Open Directions

1. **First-principles derivation of $\beta$**  
   From relational dynamics of the substrate

2. **Extension to quark sector**  
   Incorporating colour and additional representation structure

3. **Absolute mass scale calibration**  
   Linking the structural scale to physical units

# Status

This framework is:

- spectrally complete
- dynamically unified
- structurally minimal
- fully hierarchical

It does not assume:

- fundamental mass parameters
- external hierarchy inputs
- additional particle dynamics

# Repository Structure
```
paper/
├── out/ # Compiled O4 PDF
├── tex/ # LaTeX sources
└── README.md
```

# Citation

If you reference this work, please cite:

> J. Beau, *Projective Dynamics and Mass Closure: Unified Stabilisation Mechanism for All Generations*, Zenodo, 2026.

# Acknowledgements

Portions of the derivations, conceptual synthesis, and editorial refinement
benefited from iterative interactions with large language models used as
analytical assistants.  
All theoretical results and interpretations remain the sole responsibility
of the author.

# Contributions

This repository is intended as a research reference.

Critical feedback, independent verification, and alternative formulations of
the unified stabilisation mechanism are welcome.

Please open an issue to discuss conceptual points,
technical details, or possible extensions.
