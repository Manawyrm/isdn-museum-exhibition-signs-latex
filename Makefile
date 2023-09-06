ALL=$(wildcard *.tex)
LATEX=rubber --pdf

SIGNS_TEX=$(wildcard *.tex)
SIGNS_PDF=$(subst tex/,PDF/,$(SIGNS_TEX:.tex=.pdf))

all: $(SIGNS_PDF)

%.pdf: %.tex
	$(LATEX) $<

clean:
	rubber --clean $(SIGNS_TEX)
	rm -f $(SIGNS_PDF)
