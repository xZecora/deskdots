#!/usr/bin/env bash

# Terminate already running bar instances
#killall -q polybar
polybar-msg cmd quit
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | #tee -a /tmp/polybar1.log /tmp/polybar2.log /tmp/polybar3.log
polybar main & #>> /tmp/polybar1.log 2>&1 &
#polybar left & #>> /tmp/polybar2.log 2>&1 &
polybar right & #>> /tmp/polybar3.log 2>&1 &
echo "Bars launched..."

