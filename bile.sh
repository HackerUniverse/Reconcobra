#!/bin/bash
cd BiLE-suite
echo "Enter Target"
read Target
perl BiLE.pl $Target out.txt 
perl BiLE-weigh.pl sp_bile_out.txt.mine out.txt
cd ..