#!/bin/bash

args=($@)
if(($# > 0));then
	if(($# % 2 != 0)); then
	echo "please specify even number arguments"
	else 
	for ((i = 0 ; i < $# /2;i++)); do
	let "left=2*$i"
	let "right=2*$i+1"
	first=${args[$left]}
	second=${args[$right]}
	for ((j=0; j < $first; j++));do
	echo -n "$second "
	done
done
echo
fi
fi

