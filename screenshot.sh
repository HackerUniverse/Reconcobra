#!/bin/bash
echo "Hint: Do Port Scan before using this tool"
echo "Hint: Do Net Block Scan before using this tool"
cd EyeWitness
python EyeWitness.py -f /root/urls.txt -d screens  --rdp --web --vnc --active-scan --add-http-ports '21,25,80,137,139,443,445,8000,8080,8090,9000,9001,8443,3389,3306' --add-https-ports '21,25,80,137,139,443,445,8000,8080,8090,9000,9001,8443,3389,3306'
cd ..
