#!/bin/bash

hostname=$(uname -n)
echo "Current Hostname: \e[94m$(hostname)\e[49m"
read -p "New Hostname: " newhost
