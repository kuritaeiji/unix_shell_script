#!/bin/bash

(
    echo "archive: /var/tmp/archive.tar"
    cd /var/tmp || exit 1
    tar cf archive.tar -- *.txt
)

cd "${0%/*}" || exit 1
./start.sh