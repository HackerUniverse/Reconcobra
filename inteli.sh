#!/bin/bash
apt-get install xdg-utils
TARGET="$1"
BROWSER="xdg-open"
VER="1.9"
OKBLUE='\033[94m'
OKRED='\033[91m'
OKGREEN='\033[92m'
OKORANGE='\033[93m'
DELAY=1
RESET='\e[0m'

if [ -z $TARGET ]; then
	echo -e "$OKORANGE + -- --=[Usage: inteli.sh <domain>$RESET"
	exit
fi

# LOAD WEBSITE IN A WEB BROSER
$BROWSER "https://intelx.io/?s=$TARGET" 2> /dev/null
