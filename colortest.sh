#!/bin/bash

set -o errexit
#set -o xtrace

clear
tput setaf 208
echo "  ##################################### "
echo "  #   ____  ______________________    # "
echo "  #   \   \/  /\_   ___ \______   \   # "
echo "  #    \     / /    \  \/|       _/   # "
echo "  #    /     \ \     \___|    |   \   # "
echo "  #   /___/\  \ \______  /____|_  /   # "
echo "  #         \_/        \/       \/    # "
echo "  ##################################### "
echo "              XTERM Color test   	      "
echo ""
echo -e "$(tput bold) $(tput smul)\n256 Colors...$(tput rmul)"
tput sgr0
echo ""
color(){
    for c; do
        printf '\e[48;5;%dm%03d' $c $c
    done
    printf '\e[0m \n'
}

IFS=$' \t\n'
color {0..15}
for ((i=0;i<6;i++)); do
    color $(seq $((i*36+16)) $((i*36+51)))
done
color {232..255}
echo ""
