
source $ZSH/themes/agnoster.zsh-theme

# clock
prompt_clock() {
  prompt_segment cyan black "`date +'%H:%M:%S'`"
}

## Main prompt
build_prompt() {
  RETVAL=$?
  prompt_status
  prompt_clock
  prompt_virtualenv
  prompt_aws
  prompt_context
  prompt_dir
  prompt_git
  prompt_bzr
  prompt_hg
  prompt_end
}
