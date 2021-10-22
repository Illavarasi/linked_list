#!/bin/bash
#for printing all the even number lines
awk ' NR % 2 == 0 ' input.txt
