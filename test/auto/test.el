(TeX-add-style-hook
 "test"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "10pt" "twocolumn")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("natbib" "square" "numbers")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (TeX-run-style-hooks
    "latex2e"
    "citations"
    "article"
    "art10"
    "natbib"
    "url"
    "times"
    "helvet"
    "courier")
   (TeX-add-symbols
    "compactify"
    "latexusecounter"
    "usecounter"
    "URL"
    "realURL"
    "section"
    "subsection"
    "subsubsection")
   (LaTeX-add-environments
    "CompactItemize"
    "CompactEnumerate")
   (LaTeX-add-bibliographies
    "refs"
    "venues"))
 :latex)

