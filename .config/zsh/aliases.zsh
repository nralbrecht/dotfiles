# tools
alias vi="nvim"
alias vim="nvim"

alias r2="radare2"
alias p2="python2"
alias p3="python3"
alias p3c="python -i -c \"from math import *; import numpy as np;\""

alias rmr="rm -rf"
alias mkdir='mkdir -p'
alias diff="diff --color=auto"
alias grep="grep --color=auto"

alias p="pcmanfm . >/dev/null 2>/dev/null &"

# ls
alias ls="ls --color --group-directories-first"
alias l='ls -lFh'
alias la='ls -lAFh'
alias ldot='ls -ld .*'

alias ~='cd ~'
alias ..='cd ../'
alias ...='cd ../../'

# git
alias ga="git add"
alias gp="git push"
alias gpl="git pull"
alias gss="git status"
alias gss="git status -s"
alias gc="git commit -m"

# pacman
alias paci="sudo pacman -S"
alias pac="sudo pacman -Ss"

# control commands
alias start-compton="compton -b --config /dev/null --backend xr_glx_hybrid --vsync --vsync-use-glfinish"
alias reload-compton="stop-compton && start-compton"
alias stop-compton="pkill compton"

alias reload-zsh="source ~/.zshrc"

alias disable-aslr="echo 0 | sudo tee -a /proc/sys/kernel/randomize_va_space"
alias enable-aslr="echo 2 | sudo tee -a /proc/sys/kernel/randomize_va_space"
