FILE	= index

all:
	vi $(FILE).qmd
	quarto render --to html

knit:
	echo "library(knitr); knit2html(\"$(FILE).Rmd\")" | R --save -q

view:
	google-chrome _book/index.html

publish:
	cp -rp _book/* docs
	git add docs/*
	git commit -m 'update'
	git push
