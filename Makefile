html:
	Rscript -e 'bookdown::render_book("index.Rmd", output_format = "bookdown::gitbook", clean = FALSE)'
	cp -fvr toc.css style.css _book/

build:
	make html
	Rscript -e 'browseURL("_book/index.html")'

clean:
	Rscript -e "bookdown::clean_book(TRUE)"
	rm -fvr _bookdown_files
