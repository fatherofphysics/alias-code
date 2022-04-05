#!bin/bash

# bash code place to /home/$USER/

# creating custom alias aka shortcut keys
alias ..="cd .."
alias ...="cd ../../../"
alias ....="cd ../../../../"
alias .....="cd ../../../../"
alias cls="clear"
alias rf="rm -rf"
alias e="logout"
alias q="exit"
alias x="nmap"

# Use git clone fast
alias gc="git clone"

## Show hidden files ##
alias ls="ls --color=auto"
alias l.="ls -d .* --color=auto"

## Show open ports
alias oports="netstat -tulanp"

# root
alias root="sudo su"

## Pkg install & system update 
alias ai="sudo apt-get install"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"

# Stop after sending count ECHO_REQUEST packets
alias ping="ping -c 5"

# Do not wait interval 1 second, go fast
alias fastping="ping -c 100 -s.2"
