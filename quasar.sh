#!/bin/bash
#Numbers
n1="1"
n2="2"
n3="3"
n4="4"
n5="5"
n6="6"
n7="7"
n8="8"
n9="9"
y="Y"
n="n"
ip="IP"
host="HOST"
#Colors
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
#
function update() {
	echo -e "$cyan Updating ..."
	sleep 0.025
	cd packs
	echo -e "$cyan Updating Credit Card Bin Checker $red[$green✔$red]$nc"
	curl "https://raw.githubusercontent.com/TunisianEagles/quasar/master/packs/binchecker.py" --output binchecker.py >/dev/null 2>&1
	chmod +x binchecker.py
	sleep 0.025
	echo -e "$cyan Updating Email Validator $red[$green✔$red]$nc"
	curl "https://raw.githubusercontent.com/TunisianEagles/quasar/master/packs/email.sh" --output email.sh >/dev/null 2>&1
	chmod +x email.sh
	sleep 0.025
	echo -e "$cyan Updating Phone Number Validator $red[$green✔$red]$nc"
	curl "https://raw.githubusercontent.com/TunisianEagles/quasar/master/packs/phone.sh" --output phone.sh >/dev/null 2>&1
	chmod +x phone.sh 
	cd ..
	sleep 0.025
	echo -e "$cyan Starting The Script $red[$green✔$red]$nc"
	}
function Banner() {
echo -e "$blue		 █████   █    ██  ▄▄▄        ██████  ▄▄▄       ██▀███   "
echo "		▒██▓  ██▒ ██  ▓██▒▒████▄    ▒██    ▒ ▒████▄    ▓██ ▒ ██▒ "
echo "		▒██▒  ██░▓██  ▒██░▒██  ▀█▄  ░ ▓██▄   ▒██  ▀█▄  ▓██ ░▄█ ▒ "
echo "		░██  █▀ ░▓▓█  ░██░░██▄▄▄▄██   ▒   ██▒░██▄▄▄▄██ ▒██▀▀█▄   "
echo "		░▒███▒█▄ ▒▒█████▓  ▓█   ▓██▒▒██████▒▒ ▓█   ▓██▒░██▓ ▒██▒ "
echo "		░░ ▒▒░ ▒ ░▒▓▒ ▒ ▒  ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░ ▒▒   ▓▒█░░ ▒▓ ░▒▓░ "
echo "		 ░ ▒░  ░ ░░▒░ ░ ░   ▒   ▒▒ ░░ ░▒  ░ ░  ▒   ▒▒ ░  ░▒ ░ ▒░ "
echo -e "		   ░   ░  ░░░ ░ ░   ░   ▒   ░  ░  ░    ░   ▒     ░░   ░  $nc"
echo -e "	$red[$green+$red]$cyan Coded by	 $nc : Belahsan Ouerghi $red[$green+$red]$nc"
echo -e "	$red[$green+$red]$cyan Contact$nc 	  : www.facebook.com/ouerghi.belahsan $red[$green+$red]$nc"
echo -e "	$red[$green+$red]$cyan Youtube 	$nc  : www.youtube.com/channel/UCv9HdZbTOo0iBG5X2qaqmqg $red[$green+$red]$nc"
echo -e "	$red[$green+$red]$cyan Github 	$nc  : www.github.com/TunisianEagles $red[$green+$red]$nc"
	}

function back() {
	read -p "	$(echo -e $red[$green+$red]$nc)$(echo -e $white Do You Wanna Back To Main Menu$nc) $(echo -e $red[$green$y$nc$white/$green$n$red]$nc) : " b
	if [ $b = y ]; then
	bash quasar.sh
	elif [ $b = Y ]; then
	bash quasar.sh
	elif [ $b = yes ]; then
	bash quasar.sh
	elif [ $b = YES ]; then
	bash quasar.sh
	elif [ $b = YEs ]; then
	bash quasar.sh
	elif [ $b = yES ]; then
	bash quasar.sh
	elif [ $b = YeS ]; then
	bash quasar.sh
	elif [ $b = no ]; then
	echo
	echo -e "	$cyan Program Closed .. $nc"
	echo
	elif [ $b = NO ]; then
	echo
	echo -e "	$cyan Program Closed .. $nc"
	echo
	elif [ $b = No ]; then
	echo
	echo -e "	$cyan Program Closed .. $nc"
	echo
	elif [ $b = nO ]; then
	echo
	echo -e "	$cyan Program Closed .. $nc"
	echo	
	elif [ $b = N ]; then
	echo
	echo -e "	$cyan Program Closed .. $nc"
	echo
	elif [ $b = n ]; then
	echo
	echo -e "	$cyan Program Closed .. $nc"
	echo
	else
	echo ""
	echo -e "$red 404 Not Found ."
	echo ""
	fi
}
function directback() {
		bash quasar.sh
	}
function Menu() {
	echo -e "
	$red[$green$n1$red]$nc$white Website Informations$nc
	$red[$green$n2$red]$nc$white E-mail Address Checker$nc
	$red[$green$n3$red]$nc$white Phone Number Information$nc
	$red[$green$n4$red]$nc$white Credit Card Bin Checker$nc
	$red[$green$n5$red]$nc$white Ip Locator$nc
	$red[$green$n6$red]$nc$white Port Scanner$nc
	$red[$green$n7$red]$nc$white Others$nc
	$red[$green$n8$red]$nc$white About Quasar$nc
	$red[$green$n9$red]$nc$white Exit$nc
	"
	}
function secmenu() {
	echo -e "
	$red[$green$n1$red]$white DNS Lookup$nc
	$red[$green$n2$red]$white Whois Lookup$nc
	$red[$green$n3$red]$white GeoIP Lookup$nc
	$red[$green$n4$red]$white Subnet Lookup$nc
	$red[$green$n5$red]$white Get Robots.txt$nc
	$red[$green$n6$red]$white Website UP or DOWN $nc
	$red[$green$n7$red]$white Back To Main Menu$nc
	$red[$green$n8$red]$white Exit$nc
	"
	}
function thirdmenu() {
	echo -e "
	$red[$green$n1$red]$white Socialbox 			$red[$green Brute Force on facebook,insta,twitter,gmail$red ]$nc
	$red[$green$n2$red]$white PenBox 			$red[$green A Penetration Testing Framework$red ]$nc
	$red[$green$n3$red]$white Terminator 			$red[$green metasploit payload generator$red ]$nc
	$red[$green$n4$red]$white Download DVR-Exploiter 	$red[$green Exploit DVR$red ]$nc
	$red[$green$n5$red]$white Network Attacker 		$red[$green Wifi Stress Testing Tool$red] $nc
	$red[$green$n6$red]$white Lazy Script 		$red[$green Penetration Testing Framework$red ]$nc
	$red[$green$n7$red]$white fluxion 			$red[$green MITM WPA attacks Tool$red ]$nc
	$red[$green$n8$red]$white Back To Main Menu
	$red[$green$n9$red]$white Exit$nc
	"
	}
function bad() {
	echo ""
	echo -e "$red 404 Not Found ."
	echo ""
	}
update
clear
Banner
Menu
read -p "	$(echo -e $red[$green+$red]$nc) $(echo -e $white Enter Your Choice :$nc) " ch
if [ $ch = 1 ]; then
clear
echo -e "$purple                .                                            .
     *   .                  .              .        .   *          .
  .         .                     .       .           .      .        .
        o                             .                   .
         .              .                  .           .
          0     .
                 .          .                 ,                ,    ,
 .          \          .                         .
      .      \   ,
   .          o     .                 .                   .            .
     .         \                 ,             .                .
               #\##\#      .                              .        .
             #  #O##\###                .                        .
   .        #*#  #\##\###                       .                     ,
        .   ##*#  #\##\##               .                     .
      .      ##*#  #o##\#         .                             ,       .
          .     *#  #\#     .                    .             .          ,
                      \          .                         .
____^/\___^--____/\____O______________/\/\---/\___________---______________
   /\^   ^  ^    ^                  ^^ ^  '\ ^          ^       ---
         --           -            --  -      -         ---  __       ^
   --  __                      ___--  ^  ^                         --  __$nc"
   sleep 2
secmenu
read -p "	$(echo -e $red[$green+$red]$nc) $(echo -e $white Enter Your Choice :$nc) " ch1
if [ $ch1 = 1 ]; then
echo ""
echo -e "$cyan	DNS Look up$nc"
echo ""
read -p "	$(echo -e $red[$green+$red]$nc) $(echo -e $white Enter $green$ip$white/$green$host$white : $nc)" inf
echo ""
curl "https://api.hackertarget.com/dnslookup/?q=$inf"
echo ""
back
elif [ $ch1 = 2 ]; then
echo ""
echo -e "$cyan	Whois Lookup$nc"
echo ""
read -p "	$(echo -e $red[$green+$red]) $(echo -e $white Enter $green$ip$white/$green$host$white : $nc)" who
curl "https://api.hackertarget.com/whois/?q=$who"
echo ""
back
elif [ $ch1 = 3 ]; then
echo ""
echo -e "$cyan	GeoIP Lookup$nc"
echo ""
read -p "	$(echo -e $red[$green+$red]) $(echo -e $white Enter $green$ip$white/$green$host$white : $nc)" geolo
curl "https://api.hackertarget.com/geoip/?q=$geolo"
echo ""
back
elif [ $ch1 = 4 ]; then
echo ""
echo -e "$cyan	Subnet Lookup$nc"
echo ""
read -p "	$(echo -e $red[$green+$red]) $(echo -e $white Enter $green$ip$white/$green$host$white : $nc)" subnet
curl "http://api.hackertarget.com/subnetcalc/?q=$subnet"
echo ""
back
elif [ $ch1 = 5 ]; then
echo ""
echo -e "$cyan	Get Robots.txt$nc"
echo ""
read -p "	$(echo -e $red[$green+$red]) $(echo -e $white Enter $green$ip$white/$green$host$white ex $red[$green facebook.com $red]$white : $nc)" hooost
curl "https://$hooost/robots.txt"
echo ""
back
elif [ $ch1 = 6 ]; then
echo ""
echo -e "$green	Website UP or DOWN$nc"
#check internet
ping www.google.com -c 2  > /dev/null 2>&1
if [ $? -eq 0 ]; then
echo ""
echo -e "$cyan 	Your Internet Works  $nc"
echo ""
else
echo ""
echo -e "$cyan 	Check Internet It Dosen't Work ...$nc"
echo ""
exit
fi
#eof check
read -p "	$(echo -e $red[$green+$red]$nc) $(echo -e $white Enter site : $nc)" site
curl -sf $site > /dev/null
if [ $? -eq 0 ]; then > /dev/null
echo "Site is Up"
sleep 0.25
echo "-----------------"
echo "Site IP Addr : "
ping -c1 $site | sed -nE 's/^PING[^(]+\(([^)]+)\).*/\1/p'
echo "-----------------"
else
echo "SIte is down"
fi
back
elif [ $ch1 = 7 ]; then
clear
directback
elif [ $ch1 = 8 ]; then
echo ""
echo -e "	$cyan Program Closed ..$nc"
echo ""
exit 1
else
bad
back
fi
echo ""
elif [ $ch = 2 ]; then
echo ""
echo -e "$green 	E-mail Adress Checker$nc"
echo ""
#api_key
api_key=api.txt
#Every 12 hours api_key Get updated 
sleep 1.50
cd packs
bash email.sh
cd ..
back
elif [ $ch = 3 ]; then
echo ""
echo -e "$green	Phone Number Information$nc"
echo ""
sleep 0.50
cd packs
bash phone.sh
cd ..
back
elif [ $ch = 4 ]; then
echo ""
echo -e "	$green Credit Card Bin Checker$nc"
echo ""
sleep 0.50
cd packs
python binchecker.py
cd ..
back
elif [ $ch = 5 ]; then
echo ""
echo -e "	$green Ip Locator$nc"
echo ""
read -p "	$(echo -e $red[$green+$red]$nc)$(echo -e $white Enter IP Address :$nc )" ipaddr
echo ""
echo -e "$green IP Address Informations : $nc"
curl "https://ipinfo.io/$ipaddr/json"
echo ""
back
elif [ $ch = 6 ]; then
echo ""
echo -e "	$green Port Scanner $nc"
echo ""
read -p "	$(echo -e $red[$green+$red]$nc)$(echo -e $white Enter$green HOST$white To Scan : $nc)" port
echo ""
curl "https://api.hackertarget.com/nmap/?q=$port"
echo ""
back
#
elif [ $ch = 7 ]; then
echo ""
thirdmenu
if [ -d "others" ]; then
echo ""
  else
  mkdir others
fi
read -p "	$(echo -e $red[$green+$red]$nc) $(echo -e $white Enter Your Choice :$nc) " ch2
if [ $ch2 = "1" ]; then
cd others
git clone https://github.com/TunisianEagles/SocialBox.git
echo "SocialBox Cloned"
cd SocialBox
chmod +x SocialBox.sh
chmod +x install-sb.sh
./install-sb.sh
./SocialBox.sh
elif [ $ch2 = "2" ]; then
cd others
git clone https://github.com/MohamedNourTN/PenBox.git
cd PenBox
chmod +x penbox.py
python penbox.py
echo "PenBox Cloned"
elif [ $ch2 = "3" ]; then
cd others
git clone https://github.com/MohamedNourTN/Terminator.git
cd Terminator
chmod +x terminator.py
python terminator.py
echo "Terminator Cloned"
elif [ $ch2 = "4" ]; then
cd others
git clone https://github.com/TunisianEagles/DVR-Exploiter.git
cd DVR-Exploiter
chmod +x DVR-Exploiter.sh
./DVR-Exploiter.sh
echo "DVR-Exploiter Cloned"
elif [ $ch2 = "5" ]; then
cd others
git clone https://github.com/TunisianEagles/network-attacker.git
cd network-attacker
sudo chmod +x install.sh
sudo chmod +x network_attacker.sh
./install.sh
./network_attacker.sh
echo "network-attacker Cloned"
elif [ $ch2 = "6" ]; then
cd others
git clone https://github.com/arismelachroinos/lscript.git
cd lscript
chmod +x install.sh
./install.sh
echo "Lazy Script Cloned"
elif [ $ch2 = "7" ]; then
cd others
git clone https://github.com/FluxionNetwork/fluxion.git
cd fluxion 
./fluxion.sh
echo "fluxion Cloned"
elif [ $ch2 = "8" ]; then
clear
directback
elif [ $ch2 = "9" ]; then
echo ""
echo -e "	$cyan Program Closed ..$nc"
echo ""
exit 1
else
bad
back
fi
#
elif [ $ch = 8 ]; then
echo ""
echo -e "$green 	Coded By    $nc:$yellow Belahsan Ouerghi$nc"
echo -e "$green 	My Facebook $nc:$yellow www.facebook.com/ouerghi.belahsan$nc"
echo -e "$green 	My Github   $nc:$yellow www.github.com/TunisianEagles$nc"
echo -e "$green 	My Youtube $nc :$yellow www.youtube.com/channel/UCv9HdZbTOo0iBG5X2qaqmqg$nc"
echo ""
back
elif [ $ch = 9 ]; then
echo ""
echo -e "	$cyan Program Closed ..$nc"
echo ""
exit 1
else
bad
back
fi

