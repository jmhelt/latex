all:
	@echo
	@echo "Please run two tests."
	@echo "    First, run:   make validate"
	@echo "    Then run      make test"
	@echo

validate: ref.bib
	@./validate.pl ref.bib

test: test.ps

test.ps:  test.dvi
	dvips -o test.ps test.dvi
	@echo
	@echo
	@echo "Okay!  It built successfully.  Warnings from the blg:"
	@echo
	@grep '^Warning' test.blg
	@echo
	@echo "Are any of them yours?"

test.dvi:  test.tex citations.tex
	latex test
	bibtex --min-crossrefs=1000 test
	latex test
	latex test

citations.tex:  ref.bib
	./maketest.pl < ref.bib > citations.tex

ref.bib:
	if [ ! -f ref.bib ]; then ln -s ../ref.bib ./; fi;

clean:
	/bin/rm -f citations.tex test.ps test.dvi ref.bib test.aux test.bbl test.blg test.log
