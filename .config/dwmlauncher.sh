#!/bin/sh
picom &
wal -R &
sudo chown xzecora /dev/input/by-id/usb-mayflash_limited_MAYFLASH_GameCube_Controller_Adapter-event-joystick &
sudo python /home/xzecora/Documents/thermaltake/run.py &
unclutter --timeout 5 &
if [ "$(pidof ckb-next)" = "" ]
then
    ckb-next -b &
    sleep .1 && keyboardcolors
fi
dwm_bar.sh &
