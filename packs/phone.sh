#!/bin//bash
api_key=ee392377bdcf8e0008cc8f0dbd40edb0
read -p "[+] Enter Country Code EX : USA : " co
read -p "[+] Enter Phone Number : " number
curl "http://apilayer.net/api/validate?access_key=$api_key&number=$number&country_code=$co&format=1"
