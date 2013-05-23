all: screen print

screen:
	@CV_THEME=$${CV_THEME:-friggeri-cv}; sed -i '.orig' "s/friggeri-cv/$$CV_THEME/" cv.tex
	@xelatex cv.tex
	@mv cv.tex{.orig,}

print:
	@CV_THEME=$${CV_THEME:-friggeri-cv}; sed "s|\\documentclass\[\]{friggeri-cv}|\\documentclass\[print\]{$$CV_THEME}|" cv.tex > cv_print.tex
	@xelatex cv_print.tex
	@rm -f cv_print.tex

clean:
	@rm -f cv*.{aux,bcf,dvi,out,run.xml,orig} *.log
