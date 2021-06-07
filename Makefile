FILE=principal
LATEX_INCLUDE_DIRS=capitulos
TEMP_FILE_EXTENSIONS=log aux lof loc lol lot bit idx glo bbl brf nlo nls ilg toc ind out blg synctex.gz snm nav soc thm fdb_latexmk fls
all:
	rm -f "$(FILE).pdf"
	latexmk -r .latexmkrc -quiet -pdf -file-line-error -halt-on-error -interaction=nonstopmode "$(FILE).tex"

clean:
	$(foreach ext,$(TEMP_FILE_EXTENSIONS),rm -rf *.$(ext);)
	$(foreach dir,$(LATEX_INCLUDE_DIRS),rm -rf $(dir)/*.aux;)
