go=$(bspc query -D -d .local --names | rofi -dmenu -theme ~/.scripts/workspace.rasi -no-fixed-num-lines -yoffset -0  -i -kb-accept-entry "!Super-Escape,!Alt+Alt_L" -kb-row-down "Super+Escape" -kb-row-up "Super+F1")
bspc desktop --focus $go

