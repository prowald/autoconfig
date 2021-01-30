#!/bin/bash

hostname=$(uname -n)
echo -e "Current Hostname: \e[94m$(hostname)\e[49m"
read -p "New Hostname: " newhost
