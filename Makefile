PDFs = main.pdf

all: $(PDFs)

%.pdf: %.tex
	latexmk -e '$$bibtex=q/bibtex %O --min-crossrefs=1000 %S/' -pdf -bibtex $<

.PHONY: clean
clean:
	latexmk -e '$$bibtex=q/bibtex %O --min-crossrefs=1000 %S/' -pdf -bibtex -C
