#!/bin/bash
cd LinkFinder
echo "[ + ] Before using this tool"
echo "[ + ] copy all js files into LinkFinder/jsfiles folder first"
python linkfinder.py -i 'jsfiles/*.js' -r ^/api/ -o results.html