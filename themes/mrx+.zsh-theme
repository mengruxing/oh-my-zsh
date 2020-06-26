
source $ZSH/themes/agnoster.zsh-theme

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment 240 default "%(!.%{%F{yellow}%}.)%n@%m"
  fi
}

prompt_virtualenv() {
  local virtualenv_path="$VIRTUAL_ENV"
  if [[ -n $virtualenv_path && -n $VIRTUAL_ENV_DISABLE_PROMPT ]]; then
    prompt_segment cyan black "(`basename $virtualenv_path`)"
  fi
}

RPROMPT='%{%F{240}%}[$(date +"%H:%M:%S")]'
