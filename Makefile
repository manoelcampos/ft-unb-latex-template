FILE=principal
TEMP_FILE_EXTENSIONS=log aux lof loc lol lot bit idx glo bbl brf nlo nls ilg toc ind out blg synctex.gz snm nav soc thm
all:
	rm -f "$(FILE).pdf"
	latexmk -r .latexmkrc -pdf -file-line-error -halt-on-error -interaction=nonstopmode "$(FILE).tex" > /dev/null 2>&1
	
clean:
	$(foreach ext,$(TEMP_FILE_EXTENSIONS),rm -rf *.$(ext);)
