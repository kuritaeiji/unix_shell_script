#!/bin/bash

title="$1"

if [ -z "$title" ]; then
    echo "usage: ${0##*/} <title>" >&2
    exit 1
fi

cat << EOT
<html>
<head>
    <title>$title</title>
</head>
<body>
    <p>$title</p>
</body>
</html>
EOT