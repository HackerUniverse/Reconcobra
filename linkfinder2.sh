#!/bin/bash
cd LinkFinder

read -p "[ + ] Enter victim url: " victim
echo "[ + ] Example: https://www.google.com and result will automatically available at browser
echo "$victim"
python2 linkfinder.py -i $victim -d
