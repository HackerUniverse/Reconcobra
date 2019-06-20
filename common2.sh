#!/bin/bash
echo -n "[ + ] Enter File Path: " ; read File
mkdir json-results
cd json-describe
chmod u+x *
./json-describe $File > /json-results/$File.list
cd ..