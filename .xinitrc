session=${1:-spectrwm}

export XMODIFIERS=@im=ibus &
export GTK_IM_MODULE=ibus &
export QT_IM_MODULE=ibus &
ibus-daemon -drx &
case $session in
    dwm                    ) exec dbus-launch --exit-with-session dwm;;
    spectrwm               ) exec dbus-launch --exit-with-session spectrwm;;
    bspwm                  ) exec dbus-launch --exit-with-session bspwm;;
    i3                     ) exec dbus-launch --exit-with-session i3;;
    *                      ) exec $1 &;;
esac
spotifyd
