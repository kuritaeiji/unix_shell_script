#!/bin/bash

logfile="/var/log/secure"

pattern="^.*sshd\[\d+\].*Failed password for.*from (.+) port.*$"
sed -nE "s/$pattern/(\1)/p" "$logfile" | sort | uniq -c | sort -rn