#!/bin/bash
read -p "[+] Enter First 6 Digits Of A Credit Card Number : " card
http https://lookup.binlist.net/$card
