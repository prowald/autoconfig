#!/bin/bash

hostname=$(uname -n)
echo -e "\e[49mCurrent Hostname: \e[94m$(hostname)"
read -p "\e[49mNew Hostname: " newhost
