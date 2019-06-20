#!/bin/bash
echo -n "Enter URL : " ; read URL
cd Linkfinder
./linkfinder.py -i http://$URL -d