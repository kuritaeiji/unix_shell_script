#!/bin/bash

tomorrow=$( date -d '1 day' '+%d' )
if [ "$tomorrow" -eq 1 ]; then
    echo "月末"
fi