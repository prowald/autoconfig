#!/bin/bash

hostname=$(uname -n)
echo -e "\e[49mCurrent Hostname: \e[94m$(hostname)"
echo -e "\e[49m"
read -p "New Hostname: " newhost
