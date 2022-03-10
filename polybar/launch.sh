#! /bin/sh
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar top &
if [[ $(xrandr -q | grep 'HDMI1 connected') ]]; then
	polybar top-external &
fi
