ZDOTDIR="${HOME}"
ZSH_USER_SCRIPTS="${HOME}/.config/zsh"

# history
HISTFILE="${ZDOTDIR}/.zsh_history"
HISTSIZE='10000'
SAVEHIST="${HISTSIZE}"
setopt hist_ignore_space

# menu style
zstyle ':completion:*' menu select
zmodload zsh/complist

# extended globbing
setopt extendedGlob

# Turn on command substitution in the prompt (and parameter expansion and arithmetic expansion).
setopt promptsubst

# Ignore lines prefixed with '#'.
setopt interactivecomments

### USER CONFIGS
if [ ! -d "${ZSH_USER_SCRIPTS}" ]; then
    mkdir -p "${ZSH_USER_SCRIPTS}" && echo "# Put your user-specified config here." > "${ZSH_USER_SCRIPTS}/example.zsh"
fi

for zshd in $(ls -A ${ZSH_USER_SCRIPTS}/*.(z)sh); do
    source "${zshd}"
done
