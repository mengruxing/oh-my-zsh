
source $ZSH/themes/agnoster.zsh-theme

build_rprompt() {
  echo -n "%{%F{240}%}\$(date +'%H:%M:%S')]"
}

RPROMPT="$(build_rprompt)"
