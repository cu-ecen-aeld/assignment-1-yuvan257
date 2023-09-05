#!/bin/bash
if [ $# -eq 2 ]
then
	filesdir=$1
	searchstr=$2
	if [ -d $filesdir ]
	then
		num_files=$(find $1 -type f | wc -l)
		matched_lines=$(grep -r "$2" $1 | wc -l)
		echo "The number of files are $num_files and the number of matching lines are $matched_lines"
	else
		echo "$1 is not a dir: Invalid Path"
		exit 1
	fi
else
	echo "Missing Parameters."
	exit 1
fi
