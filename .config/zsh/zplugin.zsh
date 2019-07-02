### ZPLUGIN

source $HOME/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

autoload compinit
compinit

# Theme
zplugin load nralbrecht/gimezsh

# Plugins
zplugin load hcgraf/zsh-sudo
zplugin load zdharma/history-search-multi-word
zplugin snippet OMZ::plugins/extract/extract.plugin.zsh
zplugin snippet OMZ::plugins/command-not-found/command-not-found.plugin.zsh

zplugin load rupa/z
zplugin load zsh-users/zsh-completions
zplugin load leophys/zsh-plugin-fzf-finder
zplugin load changyuheng/zsh-interactive-cd

zplugin load zsh-users/zsh-autosuggestions
bindkey '^ ' autosuggest-accept

zplugin load zdharma/fast-syntax-highlighting
zplugin snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh
