# Reality Under Inquiry

*Toward an Epistemology and Ontology of Science*  
Scott Brodie Forsyth

This directory contains the complete editable LaTeX source and the compiled
print-format book. The manuscript develops **Reflexive Constraint Realism**,
an original realist and fallibilist framework for explaining how science can
produce objective knowledge of a mind-independent world while relying on
models, instruments, interventions, social criticism, and value-sensitive
research practices.

## Build

The project uses standard LaTeX, `natbib`, and `makeindex`:

```sh
./build.sh
```

Or run the build sequence directly:

```sh
pdflatex -interaction=nonstopmode -halt-on-error main.tex
makeindex main.idx
pdflatex -interaction=nonstopmode -halt-on-error main.tex
pdflatex -interaction=nonstopmode -halt-on-error main.tex
```

The final PDF is copied to `output/pdf/reality-under-inquiry.pdf`.

## Project structure

- `main.tex` — book class, typography, front matter, indexing, and assembly.
- `chapters/01-problem.tex` through `chapters/14-objections.tex` — the main
  argument, historical reconstruction, framework, and case studies.
- `chapters/15-conclusion.tex` — systematic statement, limits, implications,
  and research programme.
- `chapters/16-glossary.tex` — working definitions of key terms.
- `chapters/17-audit.tex` — editorial and factual review.
- `chapters/bibliography.tex` — manually maintained bibliography.
- `figures/` — reserved for future external figures; current diagrams are
  native TikZ for editability.

The manuscript distinguishes established evidence, interpretation, original
argument, and speculation. References are included without invented quotations
or page numbers; readers should check edition-specific pagination against the
copy they consult.
