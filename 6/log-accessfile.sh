#!/bin/bash

logfile="access_log"

if [ ! -f "$logfile" ]; then
    echo "not $logfile" >&2
    exit 1
fi

awk '$6=="GET {print $7}' | sort | uniq -c | sort -rn