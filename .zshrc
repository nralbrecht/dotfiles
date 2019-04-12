export ZSH="/home/nralbrecht/.oh-my-zsh"

#ZSH_THEME="eastwood"
ZSH_THEME="kolo"

CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"

plugins=(
	git 
	common-aliases
	extract
	npm
	pip
	python
	sublime
	sudo
)

source $ZSH/oh-my-zsh.sh
