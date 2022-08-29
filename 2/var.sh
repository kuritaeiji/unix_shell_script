#!/bin/bash

today="20220826"
wc --byte "${today}_log"

declare -a number=("zero" "one" "two")
echo "${number[1]}"