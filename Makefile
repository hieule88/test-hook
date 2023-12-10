.PHONY: clean

paper.pdft: paper.text plot-data.png
	pdflatex paper.tex
plot-%.png: %.dat plot.py
	python3 plot.py -i $*.dat -o $@
clean:
	rm -f paper.pdf
