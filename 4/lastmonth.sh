#!/bin/bash

logdir="/var/log/myapp"

thismonth=$( date '+%Y%m15' )
lastmonth=$( date -d "$thismonth - 1 month ago" '+%Y%m' )

find "$logdir" -maxdepth 1 -type f -name "access-${lastmonth}*.log" -print0 | xargs -0 tar cfv "${lastmonth}.tar"