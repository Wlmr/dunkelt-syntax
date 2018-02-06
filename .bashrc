stty -ixon

#(wal -r &)

set -o vi

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

export EDITOR="vim"
#export PATH="$HOME/.local/bin:$HOME/.stack:${PATH}"
export PATH=$PATH:$HOME/.config/Scripts
shopt -s autocd

#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	#exec startx
#fi
backup() {
  rsync -avz --partial --progress --rsh="ssh -p 19132" ~/Pictures/memes/ wlmr@82.103.140.214:~/storage/memes;
  rsync -avz --partial --progress --rsh="ssh -p 19132" ~/Documents/ wlmr@82.103.140.214:~/storage/Documents ;
}
alias mhallonet="sshfs wlmr@82.103.140.214:storage ~/server -p 19132"
alias hallonet="ssh -p 19132 wlmr@82.103.140.214"
#alias hallonet="ssh -p 19132 wlmr@31.208.39.213"
#alias hallonet="ssh -p 19132 pi@185.213.152.168"

eval "$(stack --bash-completion-script stack)"
alias vpnon="systemctl start openvpn-client@mullvad"
alias vpnoff="systemctl stop openvpn-client@mullvad"
#Encrypt plaintext $1 = text $2 = recipient
alias qgpg="~/.config/Scripts/plainGPG.sh"

#Basic Aliases
alias v="vim"
alias r="ranger"
alias ls='ls -hN --color=auto --group-directories-first'
alias lsa='ls -A'
g() { cd $1 && ls -a ;}
alias mkdir="mkdir -pv"
alias e="exit"
alias crep="grep --color=always"

alias sv="sudo vim"
alias p="sudo pacman"

alias sdn="sudo shutdown now"

alias yt="youtube-dl -ic"
alias yta="youtube-dl -xic"

alias nf="clear && neofetch"
alias clock="ncmpcpp -s clock"

alias newnet="sudo systemctl restart NetworkManager"

alias youtube="youtube-viewer"
alias YT="youtube-viewer"
alias syt="youtube-viewer"

alias Txa="cp ~/Documents/LaTeX/article.tex"
alias Txs="cp ~/Documents/LaTeX/beamer.tex"
alias Txh="cp ~/Documents/LaTeX/handout.tex"
alias TC='texclear'

klona() { git clone http://github.com/$1.git ;}

weath() { curl wttr.in/$1 ;}
alias work="mkdir ~/Work && cd ~/Work"


CF() { cd ~/.config/$1 && ls ;}

alias ethspeed="speedometer -r enp0s25"

alias notes="vim ~/notes"

alias mailsync="bash ~/.config/Scripts/mailsyncloop"

alias wifispeed="speedometer -r wlp3s0"

alias tr="transmission-remote"

alias ref="python ~/.config/Scripts/shortcuts.py && source ~/.bashrc"

alias ka="killall"

alias bars="bash ~/.config/polybar/launch.sh"

alias lsc="screen.sh l"
alias vsc="screen.sh v"
alias dsc="screen.sh d"

alias pusha="git push origin master"
alias gitall="git add . && git commit -m "whatever" && git push origin master"

#Directory Shortcuts:
alias H="cd ~ && ls -a"
alias d="cd ~/Documents && ls -a"
alias D="cd ~/Downloads && ls -a"
alias P="cd ~/Pictures && ls -a"
alias V="cd ~/Videos && ls -a"
alias M="cd ~/Music && ls -a"
alias s="cd ~/.config/Scripts && ls -a"
alias cf="cd ~/.config && ls -a"
alias cfb="vim ~/.bashrc"
alias cfz="vim ~/.zshrc"
alias cfv="vim ~/.vimrc"
alias cfr="vim ~/.config/ranger/rc.conf"
alias cfi="vim ~/.config/i3/config"
alias cfq="vim ~/.config/qutebrowser/keys.conf"
alias cfQ="vim ~/.config/qutebrowser/qutebrowser.conf"
alias cfm="vim ~/.config/mutt/muttrc"
alias cfM="vim ~/.config/moc/keymap"
alias cff="vim ~/.config/Scripts/folders"
alias cfc="vim ~/.config/Scripts/configs"
alias cfT="vim ~/.config/Scripts/tmux.conf"
alias eb="vim ~/Documents/LaTeX/uni.bib"
alias cv="vim ~/Documents/LaTeX/cv.tex"
alias cfl="vim ~/.config/mutt/lukexyz.info"
alias cfx="vim ~/.config/mutt/luxmyth.info"
alias cfk="vim ~/.config/mutt/kulade.cock"
alias cfo="vim ~/.config/mutt/kulade.info"
alias cfa="vim ~/.config/mutt/aliases"
alias cfp="vim ~/.config/polybar/config"
alias cfd="vim ~/.Xdefaults"
