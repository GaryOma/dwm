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
export _JAVA_AWT_WM_NONREPARENTING=1
# wmname LG3D
# bar
dwmblocks &
# NM applet
nm-applet &
# gnome passwords
gnome-keyring-daemon --start --components=secrets

# keep computer 'up'
setsid caffeine &

# reduces blue lights
# first, start the agent to retreive the correct location
setsid /usr/lib/geoclue-2.0/demos/agent  &
# then runs the soft
setsid redshift-gtk &

dwm > ~/dwm.log
