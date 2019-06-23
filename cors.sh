#!/bin/bash
cd CORScanner/
echo -n "[ + ] Enter Target: "
read Target
python2 cors_scan.py -u $Target --verbose
cd ..
