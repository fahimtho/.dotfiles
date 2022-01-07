# Custom Ls colors
LS_COLORS='rs=0:di=1;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=0;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:*.rasi=1;33';

# Exporting
export LS_COLORS
export ZSH="/home/fh1m/.oh-my-zsh"
export PATH="$PATH:/home/fh1m/.local/share/gem/ruby/3.0.0/bin "
export PATH="$PATH:/home/fh1m/.local/bin"
export PATH="$PATH:/home/fh1m/.platformio/penv/bin"
export PATH="$PATH:/home/fh1m/.local/bin"
export PATH="$PATH:/home/fh1m/.local/share/gem/ruby/3.0.0/bin"
export EDITOR="nvim"
export VISUAL="nvim"
export TERM=screen-256color
export KEYTIMEOUT=1
export FZF_DEFAULT_COMMAND='fd --type file --hidden --no-ignore --follow --exclude .git'
export FZF_DEFAULT_OPTS='--height 10% --layout=reverse --prompt="❱ "'
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
 --color=bg:-1,hl:#0084ff
 --color=fg+:#1f6dff,bg+:#141f33,hl+:#006fff
 --color=info:#006fff,prompt:#ff002f,pointer:#ff002f
 --color=marker:#87ff00,spinner:#ff002f,header:#0044ff'


# Arduino-cli tab completion
fpath=($HOME/.oh-my-zsh/plugins/arduino_completion_zsh $fpath)

# Plugins
plugins=(sudo fzf fzf-tab copy-pasta)

# this line
source $ZSH/oh-my-zsh.sh

# Options
autoload -U compinit
zstyle ':completion' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
autoload -U colors && colors
DISABLE_UPDATE_PROMPT="true"
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_AUTO_TITLE="true"

# Extract
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# alias
alias grep='grep --color=auto'
alias pp="gotop"
alias cdir="pwd | xclip -selection clipboard"
alias ls="lsd"
alias e="nvim"
alias s="ncmpcpp -q"
alias r="python ~/.scripts/ranger/ranger.py"
alias space="diskonaut"
alias sizeof="sudo du -sh"
alias cd="z"
alias ':q'='echo "you are not in vim, Sensei"'
alias ':q!'='echo "you are not in vim, Sensi"'
alias fileinfo="exiftool"
alias hex="hexyl"
alias watch="gobble mpv"
alias ping="gping"
alias irc="irssi"
alias cls="clear"
alias rm="trash"
alias pt="btop"
alias t="tmux attach -t Main"
alias tc="tmux new -s Main"
alias tk="tmux kill-server"
alias o="gobble xdg-open"
alias calc="pcalc"
alias reload="exec zsh"
alias la="ls -A"
alias key="~/.scripts/key"
alias up="uptime -p"
alias sudo='sudo '
alias get="yay -S"
alias yeet="sudo pacman -Rsn"
alias yeeet="sudo pacman -Rsnc"
alias update="yay -Syu"
alias pup="pacman -Qu"
alias yup="yay -Qum"
alias yf="yay -Si"
alias clean="sudo pacman -Qtdq | sudo pacman -Rns -"
alias g="gitui"
alias serial="picocom -b 9600 /dev/ttyACM0"
alias arls="arduino-cli board list"
alias acom="arduino-cli compile -b arduino:avr:uno"
alias aup="arduino-cli upload -p /dev/ttyACM0 -b arduino:avr:uno"
alias anew="arduino-cli sketch new"
alias et="nvim -t"

# Cool cd
eval "$(zoxide init zsh)"

# Custom prompt
eval "$(starship init zsh)"

# Man Page with Bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# launch without text
function launch {
    nohup "$@" >/dev/null 2>/dev/null & disown
}
