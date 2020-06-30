# !/bin/sh

# setup the multi monitor
autorandr --change
# background
~/.fehbg &
# numpad
numlockx on
# set xresources "active"
xrdb .Xdefaults
# java stuff
# have to reload it somehow ? (jdownloader2)
wmname LG3D
# bar
dwmblocks &
# NM applet
nm-applet &
# gnome passwords
gnome-keyring-daemon --start --components=secrets
setsid caffeine &
redshift-gtk &

dwm > ~/dwm.log
