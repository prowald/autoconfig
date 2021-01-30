#!/bin/bash
RESET='\033[0m'
COLOR='\e[49m'

hostname=$(uname -n)
echo -e "$(COLOR)Current Hostname: \e[94m$(hostname)$(RESET)"
while true; do
    read -p "Change Hostname?" yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
read -p "New Hostname: " newhost
echo -e "$(COLOR)Current Hostname: \e[94m$(hostname)$(RESET)"