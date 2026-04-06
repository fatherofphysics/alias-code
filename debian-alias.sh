#!/bin/bash

# bash code place to /home/$USER/ && add to the ~/.bashrc or ~/.zshrc etc.

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
alias txt="touch sample.txt"
alias bsh="touch sample.sh && chmod +x sample.sh"

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
alias i="sudo apt install"
alias up="sudo apt update"
alias ug="sudo apt upgrade"
alias rv="sudo apt remove"

# Stop after sending count ECHO_REQUEST packets
alias pi="sudo ping -c 3"

# Do not wait interval 1 second, go fast
alias fastpi="sudo ping -i 0.1 -c 5"

# openvpn
alias vpn="sudo openvpn /opt/file.ovpn"

# Pentest alias
# Rustscan
r() {
    ip="$1"

    if [ -z "$ip" ]; then
        echo "Usage: r <ip>"
        return 1
    fi

    rustscan --ulimit 5000 -g -a "$ip" > rust.tcp
    rustscan --ulimit 5000 --udp -g -a "$ip" > rust.udp
}

# Nmap scan from rust output
n() {
    ip="$1"

    if [ -z "$ip" ]; then
        echo "Usage: n <ip>"
        return 1
    fi

    tcp_ports=$(grep -oP '\[\K[0-9,]+' rust.tcp 2>/dev/null)

    if [ -f rust.udp ] && [ -s rust.udp ]; then
        udp_ports=$(grep -oP '\[\K[0-9,]+' rust.udp)
    else
        udp_ports=""
    fi

    if [ -z "$tcp_ports" ]; then
        echo "No TCP ports found in rust.tcp"
        return 1
    fi

    echo "[+] TCP Scan → $ip : $tcp_ports"
    nmap -sC -sV -p "$tcp_ports"  "$ip" scans/nmap-tcpscripts -oN nmap-scan.tcp

    if [ -n "$udp_ports" ]; then
        echo "[+] UDP Scan → $ip : $udp_ports"
        nmap -sU -p "$udp_ports" "$ip" -oN nmap-scan.udp
    else
        echo "[*] No UDP ports found. Skipping UDP."
    fi
}



