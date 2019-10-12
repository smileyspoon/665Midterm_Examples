#!/bin/bash

X=0
Y=10

while [ "$X" -lt "$Y" ]

do 
	let X=X+1
	echo "$X"
done
exit 0
