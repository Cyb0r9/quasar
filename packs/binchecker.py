#!/usr/bin/python
#coding: utf-8

import requests
import json

url= 'https://lookup.binlist.net/'
b = raw_input("	\033[1;31m[\033[1;32m+\033[1;31m]\033[1;37m Enter Credit Card bin : ")

http = requests.get(url+b)
content = http.content
json_data = json.loads(content)
for i in json_data.keys():
	print (i+" : "+str(json_data[i]))
