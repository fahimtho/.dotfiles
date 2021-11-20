#!/bin/sh

menu(){
    printf "1. [URL] Shorten 🪄: Get a shorten url\n"
    printf "2. [URL] download 🪄: Download file in ~/Downloads\n"
    printf "3. [URL] Play 🪄: Play videos in mpv\n"
    printf "4. [URL] Audio 🪄: Play audio in mpv\n"
    printf "5. [Image] Image  🪄: Save clipbaord image in ~/Pictures\n"
    printf "6. [Shell] Execute 🪄: This will run any shell command\n"
}

spell_failed(){
    notify-send "Failed to cast spell"
}

choice=$(menu | rofi -dmenu -p "Clipboard 📋" -width "600" -no-fixed-num-lines -yoffset "-100" -i -l 20 | cut -d. -f1)
cbtext=$(xclip -o -selection clipboard)
paplay $HOME/.local/share/sounds/magic.ogg &

case $choice in
    1)
	output=$(curl -s -F"shorten=$cbtext" 0x0.st)
	if [ "$output" = "Segmentation Fault" ]; then
	    spell_failed
	else
	    echo "$output" | xclip -selection c
	    notify-send "Shorten Link is in Clipboard"
	fi
	break
	;;
    2)
	wget -P ~/Downloads $cbtext &&
	    notify-send "Downloading File" ||
		spell_failed
	break
	;;
    3)
	mpv "$cbtext" || spell_failed
	break
	;;
    4)
	mpv "$cbtext" || spell_failed
	break
	;;
    5)
	file=$(date +"%Y_%m_%d_%I_%M_%p")
	xclip -selection clipboard -t image/png -o > $HOME/Pictures/$file.png ||
	    spell_failed
	break
	;;
   6)
	$cbtext || spell_failed
	break
	;;
esac
