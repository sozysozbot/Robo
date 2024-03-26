#!/bin/bash

cd "$(dirname $0)"

git clone https://github.com/hhu-adam/Robo-Images.git ./tmp-download

NEWSIZE="1000x1000^"

for filename in ./tmp-download/fullsize/*; do
  [ -e "$filename" ] || continue

  NEWFILE=$(dirname $0)/$(basename $filename)

  convert -resize $NEWSIZE $filename $NEWFILE

  echo "copying and reducing $filename to $NEWFILE."

done

rm -rf ./tmp-download