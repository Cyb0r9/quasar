#!/bin/bash
#Colors as well
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
api_key=806e8db910e4a9e8f22415e0506debd0
read -p "	$(echo -e $red[$green+$red]$white Enter Country Code ex TN : $nc)" co
read -p "	$(echo -e $red[$green+$red]$white Enter Phone Number : $nc)" number
curl "http://apilayer.net/api/validate?access_key=$api_key&number=$number&country_code=$co&format=1"
#EOF
