#!/bin/bash

test "$1" -eq 0 2> /dev/null

if [ $? -lt 2 ]; then
    echo "$1 is integer"
    echo $(( $1 + 10 ))
else
    echo "$1 is not integer"
fi