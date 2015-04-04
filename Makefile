TUTORIAL := ownership-tutorial


$(TUTORIAL).pdf: $(TUTORIAL).tex
	latexmk -pdf $(TUTORIAL).tex

$(TUTORIAL).tex: $(TUTORIAL).md preamble.inc before_body.inc
	pandoc -o $(TUTORIAL).tex --include-in-header=preamble.inc --include-before-body=before_body.inc --highlight-style=haddock $(TUTORIAL).md

.PHONY: clean

clean:
	rm -f $(TUTORIAL).aux
	rm -f $(TUTORIAL).fdb_latexmk
	rm -f $(TUTORIAL).fls
	rm -f $(TUTORIAL).log
	rm -f $(TUTORIAL).out
	rm -f $(TUTORIAL).pdf
	rm -f $(TUTORIAL).tex
	rm -f $(TUTORIAL).toc
