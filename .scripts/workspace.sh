active=$(bspc query -D -d .occupied --names | rofi -dmenu -theme ~/.scripts/active.rasi -no-fixed-num-lines -yoffset "-0" -kb-accept-entry "!Alt-Escape,!Alt+Alt_L" -kb-row-down "Alt+Escape" -kb-row-up "Alt+F1" )

bspc desktop --focus $active




