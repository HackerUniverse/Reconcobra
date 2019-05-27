#!/bin/bash
perl ShaheenX.pl
nmap -sn -oG status.txt -v -iL bingsubdomain.txt
nmap -sn -oG status.txt -v -iL googlesubdomain.txt
