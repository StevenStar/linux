#
# ~/.bashrc
#

# If not running interactively, don't do anything
# [[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
# PS1='\u \W \$ '  # To leave the default one
PS1='\[\e[0;31m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] $ \[\e[m\]\[\e[0;32m\] '

# set go enviroment
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

echo "Welcome to Steven.Wang"
echo ""
cal
