#! /bin/bash

nitrogen --restore &
#xrandr --output DP-4 --primary --pos 0x0 && xrandr --output DP-2 --pos 1920x0
xrandr --output HDMI-0 --off --output DP-0 --off --output DP-1 --off --output DP-2 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-3 --off --output DP-4 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-5 --off
dwmblocks &
wmname LG3D &
xset -dpms &
picom &
clipmenud &
