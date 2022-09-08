#!/bin/bash

bash ./convert.sh
#cp articles/config-printing.yml articles/config.yml
npm run pdf
gs -q -dNOPAUSE -dBATCH -dPDFSETTINGS=/prepress -sDEVICE=pdfwrite -sOutputFile=tmp_fontsembedded.pdf "articles/clap-book.pdf"
gs \
   -o miscellaneous/printable.pdf \
   -sDEVICE=pdfwrite \
   -dPDFSETTINGS=/prepress \
   -sColorConversionStrategy=Gray \
   -sColorConversionStrategyForImages=Gray \
   -sProcessColorModel=DeviceGray \
   -dCompatibilityLevel=1.4 \
    tmp_fontsembedded.pdf
rm tmp_fontsembedded.pdf

#cp articles/config-ebook.yml articles/config.yml
npm run pdf
gs -q -dNOPAUSE -dBATCH -dPDFSETTINGS=/prepress -sDEVICE=pdfwrite -sOutputFile=tmp_ebook.pdf "articles/clap-book.pdf"

gm convert -page B4+0+0 miscellaneous/coverpage-ebook-front.png tmp-front.pdf
gm convert -page B4+0+0 miscellaneous/coverpage-ebook-back.png tmp-back.pdf

#pdftk tmp-front.pdf tmp_ebook.pdf tmp-back.pdf cat output miscellaneous/ebook.pdf
pdftk tmp-front.pdf tmp_ebook.pdf cat output miscellaneous/clap-plugin-developers-guide.pdf
rm tmp_ebook.pdf tmp-front.pdf tmp-back.pdf

#npm run epub
cp "articles/*.epub" miscellaneous/
