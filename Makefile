PDFs = main.pdf

all: $(PDFs)

%.pdf: %.tex
	latexmk -pdf -bibtex $<

.PHONY: clean
clean:
	latexmk -pdf -bibtex -C
