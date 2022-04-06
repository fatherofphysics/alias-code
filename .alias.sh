#!/bin/bash

# bash code place to /home/$USER/ && add to the ~/.bashrc or zsh etc.

# creating custom alias aka shortcut keys
alias ..="cd .."
alias ...="cd ../../../"
alias ....="cd ../../../../"
alias .....="cd ../../../../"
alias cls="clear"
alias rf="sudo rm -rf"
alias e="logout"
alias q="exit"
alias x="nmap"
alias ua="uname -a"
alias p3="python3"
alias p2="python2"

# create sample file fast
alias txt="sudo touch sample.txt"
alias bsh="sudo touch sample.sh && chmod +x sample.sh"

# print cuurent dir
alias p="pwd | lolcat"

# micro txt editor
alias mi="micro"

# File creation
alias md="sudo mkdir"
alias mf="sudo touch"

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
alias i="sudo apt install"
alias up="sudo apt update"
alias ug="sudo apt upgrade"
alias rv="sudo apt remove"

# Stop after sending count ECHO_REQUEST packets
alias pi="sudo ping -c 3"

# Do not wait interval 1 second, go fast
alias fastpi="sudo ping -i 0.1 -c 5"
