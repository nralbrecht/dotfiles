# Automatically change the current working directory after closing ranger
# Compatible with ranger 1.4.2 through 1.9.*

CHOOSE_FILE=/tmp/ranger_cd.temp

function cd_ranger() {
    ranger --choosedir="$CHOOSE_FILE" -- "${@:-$PWD}" < $TTY

    if chosen_dir=$(< "$CHOOSE_FILE") && [ -n "$chosen_dir" ] && [ "$chosen_dir" != "$PWD" ]; then
        cd -- "$chosen_dir"
    fi

    zle && { zle reset-prompt; zle -R }
}

zle -N cd_ranger

bindkey '^F' cd_ranger
alias cdr="cd_ranger"

if [ -n "$OPEN_RANGER" ]; then
    cd_ranger
fi
