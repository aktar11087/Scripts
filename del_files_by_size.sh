#!/bin/bash

dir=$1
f_size=$2

find "$dir" -type f -size +"$f_size" -exec false {} +

if test $? -eq 0
then 
        echo "Nothing was found!"
else 
find "$dir" -type f -size +"$f_size" -print0 | xargs -0 rm -f

fi
