export LANG=en_US.UTF-8

autoload -Uz compinit
compinit

source $HOME/.config/antibody/zsh_plugins.sh

# Custom Alias
alias vi="nvim"
alias vim="nvim"
alias cls="clear"
alias p2="python2"
alias p3="python3"
alias r2="radare2"
alias sc="systemctl"
alias ls="ls --color"
alias grep="grep --color"
alias mount_usb="sudo mount /dev/sda1 /mnt/usb"

alias reload_zsh="source ~/.zshrc"
alias reload_antibody="~/.config/antibody/rebuild-plugins.sh"
