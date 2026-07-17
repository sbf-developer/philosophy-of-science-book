#!/usr/bin/env bash
set -euo pipefail

pdflatex -interaction=nonstopmode -halt-on-error main.tex
makeindex main.idx
pdflatex -interaction=nonstopmode -halt-on-error main.tex
pdflatex -interaction=nonstopmode -halt-on-error main.tex

mkdir -p output/pdf
cp main.pdf output/pdf/reality-under-inquiry.pdf

echo "Built output/pdf/reality-under-inquiry.pdf"
