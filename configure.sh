#!/bin/bash
RESET='\033[0m'
COLOR='\e[94m'

hostname=$(uname -n)
newhost=
echo -e "${RESET}Current Hostname: ${COLOR}${hostname}${RESET}"
while true; do
    read -p "Change Hostname?(yN)" yn
    case $yn in
        [Yy]* ) read -p "Enter new Hostname [raspberrypi]: " newhost
				newhost=${newhost:-raspberrypi}
				echo -e "Checking Newhost: ${newhost,}"
				if [[ $newhost =~ ^[A-Za-z0-9_-]*$ ]];
				then
					echo -e ${newhost,} > /etc/hostname
					sed -i "s/127.0.1.1.*/127.0.1.1	${newhost,}/g" /etc/hosts
					echo -e "Hostname successfully changed to ${COLOR}${newhost,}${RESET} "
					break 3
				else
					echo "Only numbers and letters are allowed."
					break
				fi;;
        * ) break;;
    esac
done
echo -e "${COLOR}Setting up Misson Control${RESET}"
apt-get install -y --no-install-recommends xserver-xorg xinit python3-tk