#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -laph --color=auto'
PS1='[\u@\h \W]\$ '
export PATH="$PATH:$HOME/flutter/bin"
