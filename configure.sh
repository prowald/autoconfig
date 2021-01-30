#!/bin/bash
RESET=`tput sgr0`
COLOR='\e[49m'

hostname=$(uname -n)
newhost=
echo -e "${COLOR}Current Hostname: \e[94m$(hostname)${RESET}"
while true; do
    read -p "Change Hostname?(yN)" y
    case $yn in
        [Yy]* ) read -p "New Hostname: " newhost; break;;
        * ) break;;
    esac
done
echo ${RESET} > /etc/hostname
sed "s/127.0.1.1.*/127.0.1.1	${newhost}/g"