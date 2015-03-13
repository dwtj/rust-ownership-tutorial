#!/bin/sh -

pandoc -o tutorial.tex --include-in-header=preamble.inc \
                       --include-before-body=before_body.inc \
		       --highlight-style=haddock \
                       tutorial.md \
&& latexmk -pdf tutorial.tex \
&& open tutorial.pdf
