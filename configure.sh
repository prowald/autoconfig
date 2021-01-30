#!/bin/bash
RESET='\033[0m'
COLOR='\e[49m'

hostname=$(uname -n)
echo -e "$(COLOR)Current Hostname: \e[94m$(hostname)$(RESET)"
echo "Do you wish to change the Hostname?"
select yn in "Yes" "No"
case $yn in
    Yes ) make install;;
    No ) exit;;
esac
read -p "New Hostname: " newhost
echo -e "$(COLOR)Current Hostname: \e[94m$(hostname)$(RESET)"