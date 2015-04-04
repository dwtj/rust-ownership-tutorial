tutorial.pdf: tutorial.tex
	latexmk -pdf tutorial.tex

tutorial.tex: tutorial.md preamble.inc before_body.inc
	pandoc -o tutorial.tex --include-in-header=preamble.inc --include-before-body=before_body.inc --highlight-style=haddock tutorial.md

.PHONY: clean

clean:
	rm -f tutorial.aux
	rm -f tutorial.fdb_latexmk
	rm -f tutorial.fls
	rm -f tutorial.log
	rm -f tutorial.out
	rm -f tutorial.pdf
	rm -f tutorial.tex
	rm -f tutorial.toc
