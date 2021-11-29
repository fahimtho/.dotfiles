#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/mybar"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q workspace -c "$DIR"/config.ini & 2>/dev/null
polybar -q date -c "$DIR"/config.ini & 2>/dev/null
polybar -q info -c "$DIR"/config.ini & 2>/dev/null
polybar -q stats -c "$DIR"/config.ini & 2>/dev/null
