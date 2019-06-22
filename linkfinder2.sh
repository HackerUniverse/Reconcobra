#!/bin/bash
echo -n "Enter URL : " ; read URL
./js_linkfinder.py -i http://$URL -d
