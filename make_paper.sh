#!/bin/bash

PAPER_INDEX=$1

pdflatex $PAPER_INDEX/main
bibtex main
pdflatex $PAPER_INDEX/main
pdflatex $PAPER_INDEX/main

