session=${1:-dwm}

case $session in
    dwm                    ) exec dbus-launch --exit-with-session dwm;;
    spectrwm               ) exec dbus-launch --exit-with-session spectrwm;;
    bspwm                  ) exec dbus-launch --exit-with-session bspwm;;
    i3                     ) exec dbus-launch --exit-with-session i3;;
    *                      ) exec $1;;
esac
