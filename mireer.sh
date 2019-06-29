#!/bin/bash
echo "[ + ] Enter Target: "
read Target
cd httrack
./httrack -w $Target
