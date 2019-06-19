#!/bin/bash
cd BiLE-suite
echo "Enter Target"
read Target
perl bile-weigh.pl $Target sp_bile_out.txt.mine out.txt 
perl bile-weigh.pl $Target sp_bile_out.txt.mine out.txt
cd ..
