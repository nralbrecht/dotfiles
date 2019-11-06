### ZPLUGIN
# see: https://github.com/zdharma/zplugin

source $HOME/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

# Theme
zplugin ice wait'!0' pick''
zplugin load nralbrecht/gimmezsh

# Plugins
zplugin ice wait'1' lucid
zplugin load hcgraf/zsh-sudo

zplugin ice wait'1' lucid
zplugin load zdharma/history-search-multi-word

zplugin ice wait'0' lucid
zplugin snippet OMZ::plugins/extract/extract.plugin.zsh

zplugin ice wait'0' lucid
zplugin snippet OMZ::plugins/command-not-found/command-not-found.plugin.zsh

zplugin ice wait'0' lucid
zplugin load rupa/z

zplugin ice wait'0' lucid
zplugin load changyuheng/zsh-interactive-cd

zplugin ice wait'0' lucid
zplugin snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh

zplugin ice wait'0' lucid
zplugin load zsh-users/zsh-completions

zplugin ice wait'0' lucid atload"bindkey '^ ' autosuggest-accept"
zplugin load zsh-users/zsh-autosuggestions

zplugin ice wait'0' lucid atinit"zpcompinit; zpcdreplay"
zplugin load zdharma/fast-syntax-highlighting
