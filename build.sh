#!/bin/bash

OUTPUT=cornelius-cv.pdf
DEST=cache

mkdir -p $DEST/
if [ ! -d "$DEST" ]; then
  echo "Could not create target $DEST (fatal)"
  exit 1
fi

pushd publications

for bibtype in article book chapter review-article review-short dataset ; do
  echo "Processing $bibtype"
  BIBFILE=../$DEST/${bibtype}.yaml
  > $BIBFILE
  for entry in $(ls -r ${bibtype}/*.yaml); do
    sed '1d' "$entry" >> $BIBFILE
  done
  sed -i '1ireferences:' $BIBFILE
done

popd

pandoc source/*.yaml -r markdown --template=config/template.tex --lua-filter=multibib.lua --citeproc --pdf-engine=xelatex -o $OUTPUT
