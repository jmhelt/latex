all:
	@echo
	@echo "Please run two tests."
	@echo "    First, run:   make validate"
	@echo "    Then run      make test"
	@echo

validate: ref.bib
	@./validate.pl ref.bib

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
	@grep '^Warning' test.blg && echo "\nAre any of them yours?" || echo "None! Way to go!"

citations.tex:  ref.bib
	./maketest.pl < ref.bib > citations.tex

ref.bib:
	if [ ! -f ref.bib ]; then ln -s ../ref.bib ./; fi;

clean:
	/bin/rm -f citations.tex test.pdf ref.bib test.aux test.bbl test.blg test.log
