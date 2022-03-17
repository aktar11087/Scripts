#!/bin/bash

#Delete x number of days file from the specific directory

FILE_DIR=$1
N_DAYS=$2

find "$FILE_DIR" -type f -mtime +"$N_DAYS" -print0 | xargs -0 rm -f
