#!/bin/bash

csvfile="$1"
GRAPH_WIDTH=50

print_mark()
{
    local count="$1"
    for _ in $(seq "$count")
    do
        echo -n "*"
    done
}

max=$( awk -F , '{print $NF}' "$csvfile" | sort -nr | head -n 1 )
# max=$( sort -t , -k 3 -nr "$csvfile" | head -n 1 )

if [ "$max" -eq 0 ]; then
    max=1
fi

while IFS=, read -r id name score
do
    number=$(( GRAPH_WIDTH * score / max ))
    print_mark "$number"
    echo " [$name]"
done < "$csvfile"