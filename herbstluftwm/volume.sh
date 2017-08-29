#!/bin/bash

case $1 in
    down)
        amixer -q set Master 2%- unmute
        herbstclient emit_hook volume
        ;;
    up)
        amixer -q set Master 2%+ unmute
        herbstclient emit_hook volume
        ;;
    mute)
        amixer -q set Master toggle
        herbstclient emit_hook volume_toggle
        ;;
esac

amixer get Master | grep '%' | dzen2 -p 1 -fn "Roboto:size=9:weight=bold" -h 14
