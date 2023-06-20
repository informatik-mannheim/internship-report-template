#!/bin/sh
set -e
pdflatex -draftmode praxissemesterbericht.tex
pdflatex -interaction batchmode -draftmode praxissemesterbericht.tex
biber praxissemesterbericht
pdflatex -interaction batchmode praxissemesterbericht.tex
rm *.bbl *.bcf *.blg *.log *.out *.run.xml *.toc *.aux
