function open_new_kitty() {
	i3-msg exec "kitty --title 'Kitty' --directory "${@:-$PWD}"" > /dev/null
	zle reset-prompt
}

zle -N open_new_kitty

bindkey '^T' open_new_kitty
