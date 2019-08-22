#!/bin/bash
cd xrdp
read -p "[+] Enter Target : " Target
read -p "[+] Enter Screen : " Screen
./xrdp $Target:$Screen --no-disp
