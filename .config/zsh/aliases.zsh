### Aliases
# Tools
alias vi="nvim"
alias vim="nvim"

alias r2="radare2"
alias p2="python2"
alias p3="python3"

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
alias gs="git status"
alias gss="git status -s"
alias gc="git commit -m"

alias s="smerge ."

# pacman
alias pac="sudo pacman -S"
alias pacs="sudo pacman -Ss"

# Control commands
alias disable-aslr="echo 0 | sudo tee -a /proc/sys/kernel/randomize_va_space"
alias enable-aslr="echo 2 | sudo tee -a /proc/sys/kernel/randomize_va_space"
