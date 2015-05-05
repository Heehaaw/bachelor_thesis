%~d1
cd %1

call:cleanup
taskkill /F /IM AcroRd32.exe
pdflatex thesis.tex
bibtex thesis
makeindex thesis.nlo -s nomencl.ist -o thesis.nls
pdflatex thesis.tex
pdflatex thesis.tex
START "" thesis.pdf

:cleanup
:: del *.log
del *.dvi
del *.aux
del *.bbl
del *.blg
del *.brf
del *.out
del *.toc
del *.ilg
del *.nlo
del *.nls
del *.lot
goto:eof