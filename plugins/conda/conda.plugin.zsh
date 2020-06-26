function activate-conda-venv() {
    LAST_PS1=$PS1
    source activate "$@"
    if [ $? -eq 0 ]; then
        VIRTUAL_ENV="$@"
        PS1=$LAST_PS1
    fi
    unset LAST_PS1
}

alias acvenv='activate-conda-venv'

