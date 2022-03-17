#!/bin/bash

#Script that takes a package name and argument and displays the info 
pack=$1

apt-cache search "$pack" | grep -i "$pack"
