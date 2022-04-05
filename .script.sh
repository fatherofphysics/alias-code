#!/bin/bash

# bash code place to /home/$USER/ && add to the ~/.bashrc or zsh etc.

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
alias ua="uname -a"
alias p3="python3"
alias p2="python2"

# create sample file fast
alias txt="touch sample.txt"
alias sh="touch sample.sh && chmod +x sample.sh"

# print cuurent dir
alias p="pwd | lolcat"

# micro txt editor
alias mi="micro"

# File creation
alias md="mkdir"
alias mf="touch"

# Use git clone fast
alias gc="git clone"

## Show hidden files ##
alias ls="ls --color=auto"
alias l.="ls -d .* --color=auto"

## Show open ports
alias oports="netstat -tulanp"

# root
alias root="sudo su"

# run cmd with sudo
alias s="sudo"

## Pkg install & system update 
alias ai="sudo apt-get install"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"

# Stop after sending count ECHO_REQUEST packets
alias ping="ping -c 5"

# Do not wait interval 1 second, go fast
alias fastping="ping -c 100 -s.2"
