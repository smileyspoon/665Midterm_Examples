#!/bin/bash

for X in *.*

do

	chmod u+x $X 
done


git add *
git commit -a -m "update"
git push -u origin master
