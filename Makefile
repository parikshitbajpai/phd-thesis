
.PHONY: force-build

all: dissertation.pdf

force-build:

dissertation.pdf: force-build
	xelatex Thesis
	bibtex chapter-1/chapter-1
	xelatex dissertation
	xelatex dissertation

propositions.pdf: force-build
	xelatex propositions
	xelatex propositions
