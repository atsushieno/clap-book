#!/bin/bash

for f in md/images/*.svg ; do
  node node_modules/svgexport/bin/index.js $f articles/images/$(basename $f .svg).png; 
done

cp md/images/*.png articles/images/

for i in md/*.md ; do 
  md2review $i > articles/$(basename -s .md $i).re ;
done
