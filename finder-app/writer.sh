#!/bin/bash

if [ $# -eq 2 ]
then
	writefile=$1
	writestr=$2
	dirname="$(dirname "${writefile}")"
	mkdir -p $dirname
	echo "$writestr" > $writefile
	exit $?
else
	echo "Parameters Missing."
	exit 1
fi
