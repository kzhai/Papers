TEX = $(wildcard */*.tex */*/*.tex *.tex)
GFX = $(wildcard */*.png */*/*.png */*.pdf */*/*.pdf)
BIB = $(wildcard *.bib)

%.tgz: %.tex
	tar cvfz $(<:.tex=.tgz) style/*.sty style/*.bst style/*.cls $(<:.tex=.tex) bib/*.bib preamble.tex $(<:.tex=)/*.png $(<:.tex=)/*.pdf $(<:.tex=)/*.tex

clean:
	rm *.aux *.dvi *.log *.bbl *.pdf *~ *.out *.blg *.toc *.nav *.snm
	rm */*.aux */*.dvi */*.log */*.bbl */*.pdf */*~ */*.out */*.blg

%.bbl: $(BIB)
	pdflatex $*
	bibtex $*

%.sup.pdf: %/supplemental.tex %/supplemental.bbl
	pdflatex $<
	pdflatex $<

%.paper.ps: %.tex %.bbl preamble.tex $(TEX) $(GFX)
	latex $<
	latex $<

%.paper.pdf: %.tex %.bbl preamble.tex $(TEX) $(GFX)
	pdflatex $<
	pdflatex $<
	mv $(<:.tex=.pdf) $@
