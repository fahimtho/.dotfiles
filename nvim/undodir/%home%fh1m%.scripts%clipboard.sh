Vim�UnDo� �3v���7خ��&���)���u���ԇ   7   xchoice=$(menu | rofi -dmenu -p "Clipboard 📋" -width "600" -no-fixed-num-lines -yoffset "-250" -i -l 20 | cut -d. -f1)      ^                       a�߻    _�                            ����                                                                                                                                                                                                                                                                                                                                                             au��     �         G      ?    printf "1. [URL] Expecto Shorten 🪄: Get a shorten url\n"5��                         (                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             au��     �         G      =    printf "2. [URL] Lumbos dl 🪄: Download file in ~/dl\n"5��                         `                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             au��     �         G      6    printf "2. [URL] dl 🪄: Download file in ~/dl\n"5��                         a                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             au��     �         G      9    printf "2. [URL] downl 🪄: Download file in ~/dl\n"5��                         e                      5�_�                       9    ����                                                                                                                                                                                                                                                                                                                                                             au��     �         G      <    printf "2. [URL] download 🪄: Download file in ~/dl\n"5��       7              	   �              	       5�_�                       $    ����                                                                                                                                                                                                                                                                                                                                                             au��     �         G      @    printf "3. [URL] Avada Playdavra 🪄: Play videos in mpv\n"5��                         �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             au��     �         G      ;    printf "3. [URL] Avada Play 🪄: Play videos in mpv\n"5��                         �                      5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             au��     �         G      :    printf "4. [URL] Listenmora 🪄: Play audio in mpv\n"5��              
          �       
              5�_�      
           	      #    ����                                                                                                                                                                                                                                                                                                                                                             au�     �      	   G      O    printf "5. [Image] Imagum Savum 🪄: Save clipbaord image in ~/pix/save\n"5��                                              5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             au�     �      	   G      J    printf "5. [Image] Imagum  🪄: Save clipbaord image in ~/pix/save\n"5��                                            5�_�   
                    F    ����                                                                                                                                                                                                                                                                                                                                                             au�     �      	   G      I    printf "5. [Image] Image  🪄: Save clipbaord image in ~/pix/save\n"5��       >                 9                    5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             au�'     �      	          O    printf "6. [Text] Sendkulus 🪄: Send clipboard text with tgsend script\n"5��                          E      P               5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             au�.     �      
   F      G    printf "7. [Shell] Executa 🪄: This will run any shell command\n"5��                        Q                    5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             au�0     �   	      F      L    printf "8. [Text] Sayee it 🪄: Clipboard text to speech with espeak\n"5��    	                    �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             au�3     �   
      F      P    printf "9. [Magnet] Torriento 🪄: Start downloading torrent from magnet\n"5��    
                    �                    5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             au�:     �      
   F      G    printf "6. [Shell] Executa 🪄: This will run any shell command\n"5��                        b                    5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             au�@     �   	   
          L    printf "7. [Text] Sayee it 🪄: Clipboard text to speech with espeak\n"5��    	                      �      M               5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             au�C     �   	   
          P    printf "8. [Magnet] Torriento 🪄: Start downloading torrent from magnet\n"5��    	                      �      Q               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             au�_     �      !   D      	wget -P ~/dl $cbtext &&5��                     	   �             	       5�_�                    /   =    ����                                                                                                                                                                                                                                                                                                                                                             au��     �   .   0   D      I	xclip -selection clipboard -t image/png -o > $HOME/pix/save/$file.png ||5��    .   4       	          �      	              5�_�                    /   4    ����                                                                                                                                                                                                                                                                                                                                                             au��     �   .   0   D      A	xclip -selection clipboard -t image/png -o > $HOME//$file.png ||5��    .   4                  �                     5�_�                    3       ����                                                                                                                                                                                                                                                                                                                            3          8          v       au��     �   2   4   D          6)   4	user=$(echo "" | rofi -dmenu -p "Enter Username: ")   	tgsend $user "$cbtext"   	break   	;;       7)5��    2                    �      `               5�_�                   7       ����                                                                                                                                                                                                                                                                                                                            7          >           v       au��     �   6   8   ?          8)   	echo "$cbtext" | espeak -p 120   	break   	;;       9)   3	notify-send "Haven't implemented this feature yet"   	break   	;;5��    6                          t               5�_�                    7       ����                                                                                                                                                                                                                                                                                                                            7          7          v       au��     �   6   7           ;;5��    6                                           5�_�                    3       ����                                                                                                                                                                                                                                                                                                                            7          7          v       au��    �   2   4   7         7)5��    2                    �                    5�_�                        ^    ����                                                                                                                                                                                                                                                                                                                                                             a�ߺ    �         7      xchoice=$(menu | rofi -dmenu -p "Clipboard 📋" -width "600" -no-fixed-num-lines -yoffset "-250" -i -l 20 | cut -d. -f1)5��       \                 &                    5�_�                    3       ����                                                                                                                                                                                                                                                                                                                            3          3          v       au��     �   2   5        5��    2                      �                     5��