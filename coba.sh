#!/bin/bash
YELLOW="\033[1;33m"
ENDCOLOR="\033[0m"
clear
echo -e
echo -e $YELLOW"[ + ] Points [ + ]"$ENDCOLOR
echo "1. Author =	 	   Computer Users"
echo "2. Last/Modified By =	   Computer Users"
echo "3. Producer or Creator =   Software / OS Versions"
echo "4. Title = 		   Path Information"
echo "5. Creator = 	           Software / OS Versions"
echo "6. Mime = 		   Content Information"
echo "7. SVG =                   image/svg+xml; charset=us-ascii means XSS"
echo ""
read -p "Enter victim url: " victim
echo "$victim"
python3 cobra_webmeta_crawler.py --wait=2 --download $victim
