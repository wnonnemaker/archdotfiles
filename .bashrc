#
# ~/.bashrc
#

# If not running interactively, don't do anything

# Enviornment variables

export VISUAL=nvim
export EDITOR=nvim
export MANPAGER='nvim +Man!'
[[ $- != *i* ]] && return

meme-status(){
 echo "my memes aint memeing"
}

PURPLE="\[$(tput setaf 5)\]"
BLUE="\[$(tput setaf 4)\]"
GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"


alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias down='sudo pacman'
alias bldinst='rm -f config.h && sudo make clean install'
alias runServer='python -m http.server 8001'
alias connvultr='ssh root@149.28.79.61'
alias connlinode='ssh root@172.233.152.243'
alias fullsysbk="sudo rsync -aAXHv --exclude='/dev/*' --exclude='/proc/*' --exclude='/sys/*' --exclude='/tmp/*' --exclude='/run/*' --exclude='/mnt/*' --exclude='/media/*' --exclude='/lost+found/' / /mnt/external/archbackup/"
alias goWP="cd ~/codingProjects/TestEnvs/wordpress-test/htdocs/wordpress"
alias ccat='pygmentize -g -O linenos=1'
alias buildtex='latexmk -pdf -pvc'
alias pull="git remote update --prune && git pull --ff-only"
alias refresh="git fetch origin main:main && git rebase main"
alias ..="cd .."
alias cheatsheet="cat ~/documents/cmdcheatsheet.txt"


set -o vi
PS1="[${BLUE}\u@${PURPLE}\h ${GREEN}\w${RESET}]\$ " 
~/codingProjects/scripts/term_open_neofetch.sh
. "$HOME/.cargo/env"
