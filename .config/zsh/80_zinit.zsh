### ZINIT
# see: https://github.com/zdharma/zinit

ZINIT_DIR=$HOME/.zinit

# Install into ZINIT_DIR
if [ ! -d "${ZINIT_DIR}" ]; then
	mkdir ~/.zinit
	git clone https://github.com/zdharma/zinit.git ~/.zinit/bin
fi

source $ZINIT_DIR/bin/zinit.zsh
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Theme
zinit ice wait'!0' pick''
zinit load nralbrecht/gimezsh

# Plugins
zinit ice wait'1' lucid
zinit load hcgraf/zsh-sudo

zinit ice wait'1' lucid
zinit load zdharma/history-search-multi-word

zinit ice wait'0' lucid
zinit snippet OMZ::plugins/extract/extract.plugin.zsh

zinit ice wait'0' lucid
zinit snippet OMZ::plugins/command-not-found/command-not-found.plugin.zsh

zinit ice wait'0' lucid
zinit load changyuheng/zsh-interactive-cd

zinit ice wait'0' lucid
zinit snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh

zinit ice wait'0' lucid
zinit load zsh-users/zsh-completions

zinit ice wait'0' lucid atload"bindkey '^ ' autosuggest-accept" atload'_zsh_autosuggest_start'
zinit load zsh-users/zsh-autosuggestions

zinit ice wait'0' lucid atinit"zpcompinit; zpcdreplay"
zinit load zdharma/fast-syntax-highlighting

