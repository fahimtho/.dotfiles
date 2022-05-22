#!/usr/bin/env sh

num=$(bash ~/.config/polybar/scripts/num_of_packages)

if [[ $num > 100 ]]; then
  notify-send "System Status" "Sensei, We have $num of packages that has of be updated" -i ~/Pictures/.icons/ai.png
else
  echo ""
fi
