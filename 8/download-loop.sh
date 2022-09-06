#!/bin/bash

url="http://www.example.org"

count=0

echo_count()
{
    echo
    echo "$count"
    exit
}

trap 'echo_count' INT

while :
do
    curl -so /dev/null "$url"
    count=$(echo "$count + 1" | bc)
    sleep 5
done
