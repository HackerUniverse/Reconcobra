#!/bin/bash
read -p "[+] Enter Target : " Target
read -p "[+] Enter Screen : " Screen
xrdp $Target:$Screen --no-disp