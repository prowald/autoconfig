#!/bin/bash
RESET='\033[0m'
COLOR='\e[49m'

hostname=$(uname -n)
echo -e "$(COLOR)Current Hostname: \e[94m$(hostname)$(RESET)"
while true; do
    read -p "Change Hostname?" yn
    case $yn in
        [Yy]* ) read -p "New Hostname: " newhost; break;;
        * ) break;;
    esac
done
read -p "New Hostname: " newhost
echo -e "$(COLOR)NEW Hostname: \e[94m$(newhost)$(RESET)"