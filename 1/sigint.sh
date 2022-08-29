#!/bin/bash

count=0

trap 'echo
      echo "Try count: $count"
      exit' INT

while true
do
    curl -o /dev/null "$1"
    ((count++))
    sleep 1
done