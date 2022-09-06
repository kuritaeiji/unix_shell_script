#!/bin/bash

server="93.184.216.34"

trap 'echo "Try count: $count"' USR1

for i in $(seq 1000)
do
    count="$i"
    nc -zv "$server" 80
    sleep 1
done