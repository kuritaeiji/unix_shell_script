#!/bin/bash

match_id="$1"
csvfile="$2"

if [ ! -f "$csvfile" ] || [ -z "$match_id" ]; then
    echo "usage: ${0##*/} <id> <file>" >&2
    exit 1
fi

while read -r line
do
    id=$(echo "$line" | cut -d , -f 1)
    name=$(echo "$line" | cut -d , -f 2)
    if [ "$id" -eq "$match_id" ]; then
        echo "$name"
    fi
done < "$csvfile"

while IFS=, read -r id name
do
    if [ "$id" -eq "$match_id" ]; then
        echo "$name"
    fi
done < "$csvfile"
