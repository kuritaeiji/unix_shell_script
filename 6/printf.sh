#!/bin/bash

search_text="ERROR:"

for filename in *.log
do
    count=$(grep -c "$search_text" "$filename")
    printf "%6s %s\n" "$count" "$filename"
done