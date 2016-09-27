LATEX := pdflatex

include targets.mk

# Compile a LaTeX file to a PDF
pdf/%.pdf: tex/%.tex
	@mkdir -p pdf
	./bin/latexrun --latex-cmd=${LATEX} -O out -o $@ $<

clean:
	rm -rf {pdf,out}
