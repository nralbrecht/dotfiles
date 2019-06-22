export LANG=en_US.UTF-8

CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"

HIST_STAMPS="yyyy-mm-dd"

# Custom aliases
source $HOME/.aliases

# zplugin
source $HOME/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

autoload compinit
compinit

zplugin load zsh-users/zsh-completions
zplugin load zsh-users/zsh-autosuggestions
zplugin load zdharma/fast-syntax-highlighting
zplugin load zdharma/history-search-multi-word
zplugin load zsh-users/zsh-history-substring-search

source $HOME/dotfiles/gimezsh.zsh-theme
# zplugin snippet OMZ::themes/kolo.zsh-theme
# zplugin snippet OMZ::themes/eastwood.zsh-theme

zplugin snippet OMZ::plugins/sudo/sudo.plugin.zsh
zplugin snippet OMZ::plugins/extract/extract.plugin.zsh
zplugin snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh
zplugin snippet OMZ::plugins/command-not-found/command-not-found.plugin.zsh
