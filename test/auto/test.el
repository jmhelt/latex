(TeX-add-style-hook
 "test"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "10pt" "twocolumn")))
   (TeX-run-style-hooks
    "latex2e"
    "citations"
    "article"
    "art10"
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
    "ref"))
 :latex)

