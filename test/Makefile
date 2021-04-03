all:
	@echo
	@echo "Please run two tests."
	@echo "    First, run:   make validate"
	@echo "    Then run      make test"
	@echo

validate: refs.bib venues.bib
	@./validate.pl refs.bib
	@./validate.pl venues.bib

test: test.pdf

test.pdf:  test.tex citations.tex
	pdflatex test
	bibtex --min-crossrefs=1000 test
	pdflatex test
	pdflatex test
	@echo
	@echo
	@echo "Okay!  It built successfully.  Warnings from the blg:"
	@echo
	@grep '^Warning' test.blg && echo "Are any of them yours?" || echo "None! Way to go!"

citations.tex:  refs.bib venues.bib
	./maketest.pl < refs.bib > citations.tex

refs.bib:
	if [ ! -f refs.bib ]; then ln -s ../refs.bib ./; fi;

venues.bib:
	if [ ! -f venues.bib ]; then ln -s ../venues.bib ./; fi;

clean:
	/bin/rm -f citations.tex test.pdf refs.bib venues.bib test.aux test.bbl test.blg test.log
