PDFs = paper.pdf

all: $(PDFs)

LATEXMK=latexmk -e '$$bibtex=q/bibtex %O --min-crossrefs=1000 %S/' -pdf -bibtex
PS2PDF=ps2pdf14 -dPDFSETTINGS=/prepress

%.pdf: %.tex
	$(LATEXMK) $<
	$(PS2PDF) $@ $(basename $@)-embedfonts.pdf

.PHONY: clean
clean:
	$(LATEXMK) -C
	rm -f comment.cut
