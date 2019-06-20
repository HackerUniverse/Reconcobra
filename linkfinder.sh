#!/bin/bash
mkdir linkfinder_results
cd linkfinder_results
echo -n "Enter URL : " ; read URL
python3 js_linkfinder.py --wait=2 --download https://$URL