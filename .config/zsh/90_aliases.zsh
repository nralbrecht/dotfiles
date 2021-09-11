### Aliases
# Tools
alias sudo="sudo "
alias nv="nvim"

alias p2="python2"
alias p3="python3"
alias pip="python3 -m pip"
alias pip2="python2 -m pip"

alias rmr="rm -rf"
alias mkdir='mkdir -p'
alias diff="diff --color=auto"
alias grep="grep --color=auto"
alias rr="ranger"

# ls
alias ls="ls --color --group-directories-first"
alias exa="exa --group-directories-first --git --time-style long-iso --binary"

alias l='exa -l'
alias ö='exa -l'
alias lö='exa -l'
alias öl='exa -l'

alias la='exa -laF'

alias ldot='exa -ld .*'
alias l.='exa -ld .*'

alias ltree='exa --long --tree --level=2'
alias lt='ltree --level=2'
alias ltt='ltree --level=3'

alias ~='cd ~'
alias ..='cd ../'
alias ...='cd ../../'
alias ....="cd ../../../"

# git
alias ga="git add"
alias gp="git push"
alias gpl="git pull"
alias gs="git status"
alias gss="git status -s"
alias gc="git commit -m"

# pacman
alias pac="sudo pacman -S"
alias pacs="sudo pacman -Ss"

# CTF
alias r2="radare2"
alias disable-aslr="echo 0 | sudo tee -a /proc/sys/kernel/randomize_va_space"
alias enable-aslr="echo 2 | sudo tee -a /proc/sys/kernel/randomize_va_space"

