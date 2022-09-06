#!/bin/bash

for i in $(seq 1 10)
do
    address=$(printf "http://www.example.org/download/image_%03d.jpg" "$i")
    curl -Os "$address"
done
