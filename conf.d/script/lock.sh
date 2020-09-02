#!/bin/sh
# Times the screen off and puts it to background
/usr/bin/swayidle \
    timeout 20 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' &
# Locks the screen immediately
/usr/bin/swaylock -i /home/fmaury/.config/sway/screen/swaylock.jpg
# Kills last background task so idle timer doesn't keep running
kill %%

