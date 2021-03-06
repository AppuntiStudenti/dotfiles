source /etc/bash_completion

C_RED="\[\033[0;31m\]"
C_GREEN="\[\033[0;32m\]"
C_LIGHT_GRAY="\[\033[0;37m\]"
C_BROWN="\[\033[0;33m\]"
C_BLUE="\[\033[0;34m\]"
C_PURPLE="\[\033[0;35m\]"
C_CYAN="\[\033[0;36m\] "
C_GRAY="\[\033[1;30m\]"
C_WHITE="\[\033[1;37m\]"
C_YELLOW="\[\033[1;33m\]"
C_LIGHT_BLUE="\[\033[1;34m\]"
C_LIGHT_CYAN="\[\033[1;36m\]"
C_LIGHT_PURPLE="\[\033[1;35m\]"
C_LIGHT_RED="\[\033[1;31m\]"
C_LIGHT_GREEN="\[\033[1;32m\]"
C_RESET="\[\033[0m\]"

function parse_git_dirty {
    [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}

pathadd "$HOME/bin"

alias ls='ls --color'
alias la='ls -la'

alias grep='grep --color'

if [ "`which hub`" != '' ]; then
    alias git=hub
fi

swapescape="$HOME/bin/swapescape"
if [[ -x "$swapescape" ]]; then
    `$swapescape`
fi

EDITOR=vim
for PATTERN in .cvs .git .hg .svn .work; do
    GREP_OPTIONS="$GREP_OPTIONS --exclude-dir=$PATTERN"
done
export GREP_OPTIONS
