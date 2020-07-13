#!/bin/sh

# A modular status bar for dwm
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: xorg-xsetroot

# Import functions with "$include /route/to/module"
# It is recommended that you place functions in the subdirectory ./bar-functions and use: . "$DIR/bar-functions/dwm_example.sh"

# Store the directory the script is running from
LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")

# Change the appearance of the module identifier. if this is set to "unicode", then symbols will be used as identifiers instead of text. E.g. [📪 0] instead of [MAIL 0].
# Requires a font with adequate unicode character support
#export IDENTIFIER="unicode"

# Change the charachter(s) used to seperate modules. If two are used, they will be placed at the start and end.
export SEP1=" {"
export SEP2="}"

# Import the modules
#. "$DIR/bar-functions/dwm_countdown.sh"
#. "$DIR/bar-functions/dwm_alarm.sh"
#. "$DIR/bar-functions/dwm_transmission.sh"
#. "$DIR/bar-functions/dwm_cmus.sh"
#. "$DIR/bar-functions/dwm_mpc.sh"
. "$DIR/bar-functions/dwm_spotify.sh"
. "$DIR/bar-functions/dwm_resources.sh"
#. "$DIR/bar-functions/dwm_battery.sh"
#. "$DIR/bar-functions/dwm_mail.sh"
#. "$DIR/bar-functions/dwm_backlight.sh"
#. "$DIR/bar-functions/dwm_alsa.sh"
. "$DIR/bar-functions/dwm_pulse.sh"
#. "$DIR/bar-functions/dwm_weather.sh"
#. "$DIR/bar-functions/dwm_vpn.sh"
#. "$DIR/bar-functions/dwm_networkmanager.sh"
#. "$DIR/bar-functions/dwm_keyboard.sh"
#. "$DIR/bar-functions/dwm_ccurse.sh"
. "$DIR/bar-functions/dwm_date.sh"
#. "$DIR/bar-functions/dwm_connman.sh"
#. "$DIR/bar-functions/dwm_loadavg.sh"

# Update dwm status bar every second
if [ $( wmctrl -m | grep 'Name' | awk '{print $2}' ) = spectrwm ]
then
    export IDENTIFIER=""
    while true
    do
        echo "$(dwm_resources) +@fg=3; $(dwm_pulse) +@fg=5; $(dwm_date)"
        sleep 1
    done
else
    export IDENTIFIER="unicode"
    while true
    do
        xsetroot -name "$(dwm_spotify)$(dwm_resources)$(dwm_pulse)$(dwm_date)"
        sleep 1
    done
fi
