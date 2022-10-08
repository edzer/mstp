FILE	= index

all:
	vi $(FILE).qmd
	quarto render --to html

knit:
	echo "library(knitr); knit2html(\"$(FILE).Rmd\")" | R --save -q

view:
	google-chrome _book/index.html

www:
	# scp lec*html epebe_01@ifgifiles.uni-muenster.de:WWW/mstp
	cp *png lec*html docs
	git add docs/*
	git commit -m 'update'
	git push
