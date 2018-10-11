#!/bin/bash
api_key=777f13a9c3608015df19bbe4a8cfdd21
read -p "Enter Your Email : " email
curl "http://apilayer.net/api/check?access_key=$api_key&email=$email&smtp=1&format=1"
