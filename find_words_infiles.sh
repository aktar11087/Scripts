#!/bin/bash

#Finds files the given directory tree that contains the searching text
dir=$1
text=$2

#find "$dir" -type f -print0 | xargs -0 grep -H --color=auto -i "$text"

grep -R -i --color=auto "$text" "$dir" 
