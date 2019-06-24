autoload -Uz vcs_info

zstyle ':vcs_info:*' stagedstr '%B%F{green}'
zstyle ':vcs_info:*' unstagedstr '%B%F{yellow}'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn
theme_precmd () {
  if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
      zstyle ':vcs_info:*' formats ' %B%F{yellow}%u%c(%b)'
  } else {
      zstyle ':vcs_info:*' formats ' %B%F{yellow}%u%c(%b)'
  }

  vcs_info
}

return_code_hook() {
  if [[ $? == 0 ]]; then
    psvar[2]=''
  else
    psvar[2]="$?"
  fi
}

setopt prompt_subst
PROMPT='%B%F{magenta}[%c${vcs_info_msg_0_}%B%F{magenta}%{$reset_color%}] '
RPS1='%B%F{magenta}%2v%{$reset_color%}'

autoload -U add-zsh-hook
add-zsh-hook precmd theme_precmd
add-zsh-hook precmd return_code_hook
