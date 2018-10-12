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
api_key=1f34e16c74b097e47556c9a9ce5cd0dd
read -p "        $(echo -e $red[$green+$red]$nc) $(echo -e $white Enter Your Email : $nc )" email
curl "http://apilayer.net/api/check?access_key=$api_key&email=$email&smtp=1&format=1"
#EOF
