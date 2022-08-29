#!/bin/bash

cd "${0%/*}" || exit 1

filecount=$(find . -maxdepth 1 -type f -name '*.html' | wc -l)
if [ "$filecount" -eq 0 ]; then
    echo "No html file" 1>&2
    exit 1
fi

for file in *.html
do
    fname=$(echo "${file##*/}" | sed -nE 's/(.+)\.html/\1/p')
    sed -nE 's%<title>(.+)</title>%\1%p' "$file" > "$fname"
done