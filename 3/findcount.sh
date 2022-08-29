#!/bin/bash


dircount=$(find ~ -maxdepth 1 -type d  | wc -l)
filecount=$(find ~ -maxdepth 1 -type f  | wc -l)

dircount=$(( dircount - 1 ))

echo "directory: $dircount"
echo "file: $filecount"