# My Config for BASH
#


# History
########################################################################
# Ignore empty lines and remove duplicate entrys
export HISTCONTROL=ignoreboth
export HISTSIZE=5000000
export HISTFILESIZE=10000000
# append new history-entrys
shopt -s histappend
########################################################################


# Shortcuts
########################################################################
# History
alias h='history'
# ls
alias ls='ls -Ga'
alias ll='ls -l'
alias la='ls -A'
alias lr='ls -lart'
alias vi='vim'
# Screen
alias cls='clear'
########################################################################


# Small Helper
########################################################################
#alias wc_php_files='wc -l `find ./ -iwholename "*.php" -type f`'
########################################################################


# cd, autocd if only gives foldername
########################################################################
alias ..='cd ..'
shopt -s autocd
########################################################################


# vars
########################################################################
export EDITOR=vim
export VISUAL=$EDITOR
export PAGER=less
export LESS='-iMn'
########################################################################


# sudo-shortcuts 
########################################################################
if [ $UID -ne 0 ]; then
    alias scat='sudo cat'
    alias svi='sudo vi'
fi
########################################################################


# Colorful Manpages
########################################################################

export LESS_TERMCAP_us=$'\E[01;32m'       # begin underline
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_so=$'\E[01;44;33m'    # begin Standout-Mode
export LESS_TERMCAP_se=$'\E[0m'           # end Standout-Mode
export LESS_TERMCAP_md=$'\E[01;34m'       # start bold
export LESS_TERMCAP_mb=$'\E[01;34m'       # start blink
export LESS_TERMCAP_me=$'\E[0m'           # end all
########################################################################


# Go two folder up with 'up 2' 
########################################################################
function up 
{
  [ "${1/[^0-9]/}" == "$1" ] && {
    local ups=""
    for i in $(seq 1 $1)
    do
      ups=$ups"../"
    done
    cd $ups
  } || echo "usage: up INTEGER"
}
########################################################################


# ps-greep (ps -ef | grep prozess)
########################################################################
function psgr()
{
  FIRST=`echo $1 | sed -e 's/^\(.\).*/\1/'`
  REST=`echo $1 | sed -e 's/^.\(.*\)/\1/'`
  ps -ef | grep -v "$0" | grep "[$FIRST]$REST"
}
########################################################################


# cd and ls in one command
########################################################################
cl() {
    dir=$1
    if [[ -z "$dir" ]]; then
        dir=$HOME
    fi
    if [[ -d "$dir" ]]; then
        cd "$dir"
        ls
    else
        echo "bash: cl: '$dir': Directory not found"
    fi
}
########################################################################

