#!/bin/bash

tmpfile="tmpfile.$$"
: > "$tmpfile"

INF="\n"

while read -r line
do
    echo -n "$line" | md5sum | awk '{print $1}' >> "$tmpfile"
done < "$1"

paste -d ',' "$1" "$tmpfile"

rm -f "$tmpfile"