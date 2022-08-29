#!/bin/bash

logdir="/var/log/myapp"

find "$logdir" -name "*.log" -print0 | xargs -0 grep "ERROR" /dev/null