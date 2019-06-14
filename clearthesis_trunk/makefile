last.pdf:lz_begin.pdf mine.pdf
	pdftk $^ cat output $@
mine.pdf:mine.tex
	make -C fig
	latex mine
	bibtex 	 mine
	mv mine.bbl mine-utf8.bbl
	iconv -c -f utf8 -t gbk mine-utf8.bbl > mine.bbl
	rm mine-utf8.bbl
	latex mine
	latex mine
	dvips mine.dvi
	ps2pdf mine.ps
clean:
	-rm last.pdf mine.dvi mine.ps mine.toc mine.aux mine.log mine.pdf mine.bbl mine.blg
	make -C fig clean
