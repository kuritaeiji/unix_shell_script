#!/bin/bash

echo -n "Type your Answer[y/n]"

tty_state=$(stty -g)
stty raw
char=$(dd bs=1 count=1 2> /dev/null)
stty "$tty_state"

echo

case "$char" in
    [yY])
        echo "Input: yes"
        ;;
    [nN])
        echo "Input: no"
        ;;
    *)
        echo "Input: what?"
        ;;
esac