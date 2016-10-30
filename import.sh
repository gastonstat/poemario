#! bin/bash

# import poem files from poemar/ to poemario/

cp ../poemar/io/*.md .

poemas=$(ls | sed 's/.md//g')

for poema in $poemas
do
	mv $poema.md $poema.Rmd
done
