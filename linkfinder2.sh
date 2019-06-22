#!/bin/bash
echo "[ + ] Enter TERMUX option for Termux else press RETURN :"
read $first

if [ "$first" == 'TERMUX' ]

then 

read -p "[ + ] Enter victim url: " victim
echo "$victim"
./python js_linkfinder.py --wait=2 --download $victim

else

read -p "[ + ] Enter victim url: " victim
echo "$victim"
./python3 js_linkfinder.py --wait=2 --download $victim

fi
