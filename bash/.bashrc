#
# ~/.bashrc
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias python='python3'

export set PATH=$PATH:/home/jmiv/bin

export set EDITOR=nvim

alias vim="nvim"
alias vi="nvim"
alias rm="echo 'This is not the command you are looking for'; false"
