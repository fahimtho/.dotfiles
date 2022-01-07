#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q date -c        ~/.config/polybar/config.ini & 2>/dev/null
polybar -q info -c        ~/.config/polybar/config.ini & 2>/dev/null
polybar -q music -c       ~/.config/polybar/config.ini & 2>/dev/null
polybar -q workspace -c   ~/.config/polybar/config.ini & 2>/dev/null
