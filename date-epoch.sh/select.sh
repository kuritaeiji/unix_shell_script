#!/bin/bash

while true
do
    echo "Menu:"
    echo "1) list file"
    echo "2) current directory"
    echo "3) exit"

    read -r number
    case $number in
        1)
            ls
            ;;
        2)
            pwd
            ;;
        3)
            exit
            ;;
        **)
            echo "Error: unkown command"
            ;;
    esac
done

