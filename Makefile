.PHONY: clean

paper.pdf: paper.tex plot-data.png
	pdflatex paper.tex
plot-%.png: %.dat plot.py
	python3 plot.py -i $*.dat -o $@
clean:
	rm -f paper.pdf
