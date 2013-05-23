all: screen print

screen:
	@CV_THEME=$${CV_THEME:-friggeri}; sed -i '.orig' "s/friggeri/$$CV_THEME/" cv.tex
	@xelatex cv.tex
	@mv cv.tex{.orig,}

print:
	@CV_THEME=$${CV_THEME:-friggeri}; sed "s|\\documentclass\[\]{friggeri}|\\documentclass\[print\]{$$CV_THEME}|" cv.tex > cv_print.tex
	@xelatex cv_print.tex
	@rm -f cv_print.tex

clean:
	@rm -f cv*.{aux,bcf,dvi,out,run.xml,orig} *.log
