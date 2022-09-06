#!/bin/bash

case $(uname) in
    Darwin)
        ECHO=/bin/echo
        ;;
    *)
        ECHO="echo"
        ;;
esac

"$ECHO" -n "ここには改行を表示しない"
"$ECHO" "メッセージ"
