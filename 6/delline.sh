#!/bin/bash

outdir="newdir"

if [ ! -d "$outdir" ]; then
    echo "$outdir not found" >&2
    exit 1
fi

for filename in *.js
do
    sed -E '/^[[:blank:]]*$&/d' "$filename" > "${outdir}/${filename}"
done