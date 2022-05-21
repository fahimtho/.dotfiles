#!/usr/bin/env bash

# Terminate already running bar instances
kill -9 $(pgrep polybar)

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q Top -c ~/.config/polybar/config.ini & 2>/dev/null
polybar -q Bottom -c ~/.config/polybar/config.ini & 2>/dev/null
