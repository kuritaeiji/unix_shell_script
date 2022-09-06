#!/bin/bash

tmpfile="tmpfile.$$"
: > "$tmpfile"

remove_tmpfile()
{
    rm -f "$tmpfile"
}

trap 'remove_tmpfile' EXIT

echo 100 >> "$tmpfile" 
echo 1000 >> "$tmpfile"

awk 'BEGIN{sum = 0} {sum += $1} END{print sum}' "$tmpfile"
