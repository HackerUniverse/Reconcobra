#!/bin/bash
cd LinkFinder
echo "[ + ] Before using this tool"
echo "[ + ] copy all js files into LinkFinder/jsfiles folder first"
echo "[ + ] Otherwise you output will be an error"
echo ""
python linkfinder.py -i 'jsfiles/*.js' -r ^/api/ -o results.html