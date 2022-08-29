#!/bin/bash

str="dummy"

cat << EOT
表示される: $str
表示されない: \$str
EOT