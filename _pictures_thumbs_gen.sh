#!/bin/bash

cd "assets/pictures"

make_thumbs()
{
  cd $1
  for f in *.jpg
  do
    sips -Z 250 "$1" "$f" --out "thumb_${f}"
  done
  cd ".."
}

for f in */
do
  echo $f
  make_thumbs $f
done

# make_thumbs "./"
