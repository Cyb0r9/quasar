#!/bin/bash
#ROOT PRIVILEGIES
#colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
purple="\033[0;35m"
cyan="\033[0;36m"
cafe="\033[0;33m"
fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"
#ROOT PRIVILEGIES
if [[ $EUID -ne 0 ]]; then
        echo -e "$red You don't have Root privilegies, execute the script as root.$nc"
        exit 1
fi
#Installation
sudo apt-get update
sudo apt-get install bash
sudo apt-get install aircrack-ng
sudo apt-get install curl
sudo apt-get install libssl-dev
sudo apt-get install libpcap0.8-dev
sudo apt-get install hostapd
sudo apt-get install lighttpd
sudo apt-get install php5-cgi
sudo apt-get install http
echo -e "$cyan System Update $red[$green✔$red]$nc"
echo -e "$cyan bash Installed $red[$green✔$red]$nc"
echo -e "$cyan aircrack-ng Installed $red[$green✔$red]$nc"
echo -e "$cyan curl Installed $red[$green✔$red]$nc"
echo -e "$cyan libssl-dev Installed $red[$green✔$red]$nc"
echo -e "$cyan libpcap0.8-dev Installed $red[$green✔$red]$nc"
echo -e "$cyan hostapd Installed $red[$green✔$red]$nc"
echo -e "$cyan lighttpd Installed $red[$green✔$red]$nc"
echo -e "$cyan php5-cgi Installed $red[$green✔$red]$nc"
echo -e "$cyan http Installed $red[$green✔$red]$nc"
#EOF
sleep 2
chmod +x quasar.sh
echo -e "$yellow You Can Run Now quasar.sh$nc"
