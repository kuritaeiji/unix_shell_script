#!/bin/bash

tty=$(tty)

while read -r question
do
    echo "$question"
    read -r dir < "$tty"
    echo "Command: ls $dir"
    ls "$dir"
done < question.txt
