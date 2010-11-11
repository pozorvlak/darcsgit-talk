all: slides.pdf

#handout.dvi: handout.tex defs.tex
#	latex handout.tex

slides.pdf: slides.ps
	ps2pdf slides.ps
slides.ps: slides.dvi
	dvips slides.dvi
slides.dvi: slides.tex
	latex slides.tex
clean:
	rm *.ps* *.p[0-9]* *.pdf *.out *.dvi *.aux *.log
