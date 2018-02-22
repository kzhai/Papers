#!/bin/bash

rm *.aux *.log *.bbl *~ *.out *.blg *.toc *.nav *.snm
rm main.pdf
rm main.dvi

PAPER_INDEX=$1

pdflatex $PAPER_INDEX
bibtex $PAPER_INDEX
pdflatex $PAPER_INDEX
pdflatex $PAPER_INDEX

