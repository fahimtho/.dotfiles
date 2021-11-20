#! /usr/bin/env bash

function tmux_sessions()
{
    tmux list-session -F '#S'
}

TMUX_SESSION=$( (echo "new"; tmux_sessions) | rofi -no-fixed-num-lines -yoffset "-100" -width "300" -dmenu -p "session")

if [[ x"new" = x"${TMUX_SESSION}" ]]; then
    rofi-sensible-terminal -e tmux new-session &
elif [[ -z "${TMUX_SESSION}" ]]; then
    echo "Cancel"
else
    rofi-sensible-terminal -e tmux attach -t "${TMUX_SESSION}" &
fi
