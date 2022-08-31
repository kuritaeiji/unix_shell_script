#!/bin/bash

username="user1"
server="192.168.1.5"

cd "${0%/*}" || exit 1

tar cfz - "../log" | ssh ${username}@${server} "cat > /backup/myapp.log.tar.gz"

ssh ${username}@${server} "cat /backup/myapp.log.gz" | tar xfz -