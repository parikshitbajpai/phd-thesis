.PHONY: force-build

all: thesis clean

force-build:

thesis: force-build
	xelatex Thesis
	bibtex Thesis
	xelatex Thesis
	xelatex Thesis

clean:
	rm -rf *.out *.aux */*.aux *bbl *blg *log *toc *.ptb *.tod *.fls *.fdb_latexmk *.lof *.lot
