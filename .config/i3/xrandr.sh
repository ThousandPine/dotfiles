#!/bin/sh
intern=eDP1
extern=HDMI1

if xrandr | grep "$intern connected"; then
    if xrandr | grep "$extern disconnected"; then
        xrandr --output "$extern" --off --output "$intern" --auto --primary
    else
        xrandr --output "$extern" --auto --primary --output "$intern" --off
        # xrandr --output "$extern" --auto --primary --output "$intern" --auto --right-of "$extern"
    fi
fi
