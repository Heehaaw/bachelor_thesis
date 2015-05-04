%~d1
cd %1

call:cleanup
tskill acrobat  
pdflatex %2.tex
bibtex %2
pdflatex %2.tex
pdflatex %2.tex
makeindex %2.nlo -s nomencl.ist -o %2.nls
pdflatex %2.tex
START "" %2.pdf

:cleanup
:: del *.log
del *.dvi
del *.aux
del *.bbl
del *.blg
del *.brf
del *.out
del *.toc
goto:eof