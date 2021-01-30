#!/bin/bash
RESET=`tput sgr0`
COLOR='\e[49m'

hostname=$(uname -n)
newhost=
echo -e "${COLOR}Current Hostname: \e[94m$(hostname)${RESET}"
while true; do
    read -p "Change Hostname?(yN)" yn
    case $yn in
        [Yy]* ) read -p "Enter new Hostname [raspberrypi]: " newhost
				newhost=${newhost:-raspberrypi}
				echo -e "Checking Newhost: ${newhost,}"
				if [[ $newhost =~ ^[A-Za-z0-9_-]*$ ]];
				then
					echo -e ${newhost,} > /etc/hostname
					sed "s/127.0.1.1.*/127.0.1.1	${newhost,}/g"
					break 2
				else
					echo "Only numbers and letters are allowed."
					exit
				fi;;
        * ) break;;
    esac
done
