FILE	= lec8

all:
	vi $(FILE).Rmd
	make knit

knit:
	echo "library(knitr); knit2html(\"$(FILE).Rmd\")" | R --save -q

view:
	google-chrome $(FILE).html

www:
	# scp lec*html epebe_01@ifgifiles.uni-muenster.de:WWW/mstp
	cp *png lec*html docs
	git add docs/*
	git commit -m 'update'
	git push
