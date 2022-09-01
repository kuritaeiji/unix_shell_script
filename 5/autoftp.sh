#!/bin/bash

server="192.168.2.5"
user="user"
password="password"
dirname="dirname"
filename="filename"

ftp -n "$server" << EOT
user "$user" "$password"
binary
cd "$dirname"
get "$filename"
EOT