#!/bin/bash

outdir="newdir"

if [ ! -d "$outdir" ]; then
    echo "not dir $outdir" >&2
    exit 1
fi

for htmlfile in *.html
do
    sed '%/img/%/images/%g' "$htmlfile" > "${outdir}/${htmlfile}"
done