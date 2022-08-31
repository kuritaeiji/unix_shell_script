#!/bin/bash

backup_dir="/home/user1/backup"

while getopt "a" opt
do
    case $opt in
        a)
            cp -pRd myapp "$backup_dir"
            exit
            ;;
    esac
done

cp -R myapp "$backup_dir"