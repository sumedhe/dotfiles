#!/bin/bash

if [[ $(pgrep -f trayer ) ]]; then
    killall trayer
fi

sleep 1s

trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand false --width 200 --widthtype pixel --transparent true --tint 0x222222 --alpha 0 --height 16 --margin 155 &
