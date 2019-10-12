#!/bin/bash

ARG=${1:-"Update"}

for X in *.*

do

	chmod u+x $X 
done


git add *
git commit -a -m "ARG"
git push -u origin master
