#!/bin/bash

cd "${0%/*}" || exit 1

start_command="./start.sh"

if [ -x "$start_command" ]; then
    $start_command
else
    echo "ERROR: -x $start_command failed" >&2
    exit 1
fi