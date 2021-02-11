FILE=principal
TEMP_FILE_EXTENSIONS=log aux lof loc lol lot bit idx glo bbl brf nlo nls ilg toc ind out blg synctex.gz snm nav soc thm
all:
	rm -f "$(FILE).pdf"
	pdflatex -file-line-error -interaction=nonstopmode "$(FILE).tex" > /dev/null 2>&1 || true 
	pdflatex -file-line-error -interaction=nonstopmode "$(FILE).tex" > /dev/null 2>&1 || true 
	bibtex "$(FILE).aux" > /dev/null 2>&1 || true
	bibtex "$(FILE).aux" > /dev/null 2>&1 || true
	pdflatex -file-line-error -interaction=nonstopmode "$(FILE).tex" > /dev/null 2>&1 || true 
	makeindex "$(FILE)" || true
	makeindex "$(FILE).nlo" -s nomencl.ist -o "$(FILE).nls" > /dev/null 2>&1 || true
	pdflatex -file-line-error -interaction=nonstopmode "$(FILE).tex" > /dev/null 2>&1 || true 
	pdflatex -file-line-error -interaction=nonstopmode "$(FILE).tex" > /dev/null 2>&1 || true 
	
clean:
	$(foreach ext,$(TEMP_FILE_EXTENSIONS),rm -rf *.$(ext);)
