#!/bin/bash
read -p "[+] Enter Target in IP/CIDR/Block: " Target
masscan -p21,22,3389,21,23,443,110,143,/139,5900-5,5060-5065,6379,5432,3306,1433,27017-19,7000,7001,9042,7199,8080,5986 --banners --open-only --rate 1000 --range $Target > mascanresults.txt