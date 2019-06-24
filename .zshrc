# .zshrc
# Author: Nils Albrecht
# License: freeware

export LANG=en_US.UTF-8
export EDITOR="/bin/subl"

ZDOTDIR="${HOME}"
ZSHDDIR="${HOME}/.config/zsh"

### HISTORY
HISTFILE="${ZDOTDIR}/.zsh_history"
HISTSIZE='10000'
SAVEHIST="${HISTSIZE}"
setopt hist_ignore_dups
setopt hist_ignore_space

# menu style
zstyle ':completion:*' menu select
zmodload zsh/complist

# extended globbing
setopt extendedGlob

# Turn on command substitution in the prompt (and parameter expansion and arithmetic expansion).
setopt promptsubst

# Keep history of `cd` as in with `pushd` and make `cd -<TAB>` work.
DIRSTACKSIZE=16
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_minus

# Ignore lines prefixed with '#'.
setopt interactivecomments

### USER CONFIGS
if [ ! -d "${ZSHDDIR}" ]; then
    mkdir -p "${ZSHDDIR}" && echo "# Put your user-specified config here." > "${ZSHDDIR}/example.zsh"
fi

for zshd in $(ls -A ${ZSHDDIR}/^*.(z)sh$); do
    source "${zshd}"
done

### ZPLUGIN
source $HOME/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

autoload compinit
compinit

zplugin load hcgraf/zsh-sudo
zplugin load chrissicool/zsh-256color
zplugin load zsh-users/zsh-completions
zplugin load zsh-users/zsh-autosuggestions
zplugin load zdharma/fast-syntax-highlighting
zplugin load zdharma/history-search-multi-word
zplugin load zsh-users/zsh-history-substring-search

zplugin snippet OMZ::plugins/extract/extract.plugin.zsh
zplugin snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh
zplugin snippet OMZ::plugins/command-not-found/command-not-found.plugin.zsh
