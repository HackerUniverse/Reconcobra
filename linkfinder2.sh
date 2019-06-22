#!/bin/bash
echo -n "Enter URL : " ; read URL
mkdir js_linkfder
cd js_linkfder
./js_linkfinder.py -i http://$URL -d
