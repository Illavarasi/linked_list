#!/bin/bash
#for printing all the odd number lines
#count=1
#if [ '$count % 2' == 1 ]
#then
awk ' NR % 2 == 1 ' input.txt
#else
source evenfile.sh
#count=++
#fi
