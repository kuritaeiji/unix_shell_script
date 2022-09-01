#!/bin/bash

filesize=1024

tmpdata="tmpdata.tmp"
timefile="timecount.tmp"

dd if=/dev/zero of="$tmpdata" bs="$filesize" count="$filesize"

server="192.168.23.1"
user="user"
password="password"

echo "Filesize: ${filesize}(KB)"
echo "FTP Server: $server"

(time -p ftp -n "$server") << EOT 2> "$timefile"
ftp -n "$server" << EOT
user "$user" "$password"
binary
put "$tmpdata"
EOT

realtime=$( awk -E '/^real/ {print $2}' "$timefile" )
speed=$( python3 -c "print($filesize // $realtime)")
echo "transfer Speed: $speed (KB/sec)"

rm -f "$tmpdata" "$timefile"