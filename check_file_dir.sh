#!/bin/bash


############ shelll  script to  check  if its file  or  directory #################


arg=$1

if [ -f "$arg" ]; then
	echo "$arg is a file"
elif [ -d "$arg" ]; then
	echo "$arg is a directory "
else
	echo "the given argument is neither a file nor a directory "

fi






