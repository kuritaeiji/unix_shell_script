#!/bin/bash

filename="$1"

sed -e 's/&/\&amp;/g' \
-e 's/</\&lt;/g' \
-e 's/>/\&gt;/g' \
-e 's/"/\&quot;/g' \
-e "s/'/\&#39;/g" \
-e 's/$/<br>/g' "$filename"