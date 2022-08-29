#!/bin/bash

filename="command.html"
eval "$(sed -nE 's%<code>(.+)</code>%\1%p' $filename)"