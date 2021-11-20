#!/bin/bash -

eval "$4"

if [[ -n $manage && $state != @(floating|fullscreen) ]]; then
    max_per_desktop=3
    if [[ -n $node ]]
        then target_desktop=$(bspc query -D -n "$node")
    elif [[ -n $desktop ]]
        then target_desktop=$desktop
    elif [[ -n $monitor ]]
        then target_desktop=$(bspc query -D -d "$monitor:focused")
        else target_desktop=$(bspc query -D -d)
    fi
    for ((
        d = target_desktop, i = 1;
        d && (d != target_desktop || i);
        d = $(bspc query -D "$d" -d next.local)
    )); do
        (( i = 0 ))
        mapfile -t < <(bspc query -N -d "$d" -n '.!hidden.!floating.!fullscreen.window')
        if (( ${#MAPFILE[@]} < max_per_desktop )); then
            if bspc query -D -d "$d.focused" > /dev/null
                then target_node=focused
                else target_node=${MAPFILE[@]: -1} target_node=${target_node:-@$d:/}
            fi
            echo "node=$target_node"
            echo follow=on
            break
        fi
    done
fi
