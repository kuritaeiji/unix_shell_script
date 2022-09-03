#!/bin/bash

csvfile="data.csv"

if [ ! -f "$csvfile" ]; then
    echo "fileがありません" >&2
    exit 1
fi

if [ -z "$1" ]; then
    echo "usage: ${0##*/} <id>" >&2
    exit 1
fi

awk -F , -v id="$1" '$1 == id {print $2}' "$csvfile"

# INF="\n"

# while read -r line
# do
#     id=$( echo "$line" | cut -d ',' -f 1 )
#     name=$( echo "$line" |  cut -d ',' -f 2 )
#     score=$( echo "$line" | cut -d ',' -f 3)

#     if [ "$id" = "$1" ]; then
#         echo "$name,$score"
#     fi
# done < "$csvfile"