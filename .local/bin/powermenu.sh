#!/bin/sh

response="$(printf "Reboot\\nShut Down\\nLock\\nQuit XSession" | rofi -dmenu -i -p "What would you like to do?" -lines 4)"

if [ "$response" = "Reboot" ]; then
    sudo reboot
elif [ "$response" = "Shut Down" ]; then
    sudo poweroff
elif [ "$response" = "Lock" ]; then
    i3lock-fancy -t "OwO Whats Dis? I'm Wocked UwU"
elif [ "$response" = "Quit XSession" ]; then
    bspc quit & i3-msg exit & sudo killall dwm & sudo killall spectrwm
fi
