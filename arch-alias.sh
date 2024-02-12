#!/bin/sh

# custom alias

# root cmds
alias i="sudo pacman -S"
alias ui="sudo pacman -Rsu"
alias ll="ls -l"
alias la="ls -a"

# dir/file manipulation
alias .="cd .."
alias ..="cd ../../"
alias ...="cd ../../../"
alias ....="cd ../../../../"

# networking
alias gc="git clone"
alias xhtb="sudo nmap -T4 -A -v -Pn"

# curosr
alias tf="xinput disable 'Synaptics TM3053-009'"
alias tn="xinput enable 'Synaptics TM3053-009'"
