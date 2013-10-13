FILE	= lec1

all:
	vi $(FILE).Rmd
	make knit

knit:
	echo "library(knitr); knit2html(\"$(FILE).Rmd\")" | R --save -q

view:
	google-chrome $(FILE).html
