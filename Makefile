all: screen print

screen:
	@xelatex cv.tex

print:
	@sed 's|\\documentclass\[\]{friggeri-cv}|\\documentclass\[print\]{friggeri-cv}|g' cv.tex > cv_print.tex
	@xelatex cv_print.tex
	@rm -f cv_print.tex

clean:
	@rm -f cv*.{aux,bcf,dvi,out,run.xml} *.log
