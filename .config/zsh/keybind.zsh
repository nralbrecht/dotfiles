### KEYS
bindkey -e
bindkey "^[[H" beginning-of-line #Home key
bindkey "^[[F" end-of-line #End key
bindkey "^[[3~" delete-char #Del key
bindkey "^[[A" history-beginning-search-backward #Up Arrow
bindkey "^[[B" history-beginning-search-forward #Down Arrow
bindkey "^[[1;5C" forward-word # control + right arrow
bindkey "^[[1;5D" backward-word # control + left arrow
bindkey "^H" backward-kill-word # control + backspace
bindkey "^[[3^" kill-word # control + delete
