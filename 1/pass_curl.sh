#!/bin/bash

# username=guest
# hostname=localhost

echo -n "Password:"
stty -echo
read -r password
stty echo

echo

echo "$password"

# curl -s -u "${username}:${password}" -O "ftp://${hostname}/filename.txt"