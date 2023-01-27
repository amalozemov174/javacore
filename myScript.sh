#!/bin/bash

date
echo "checking file"
if test -f "Main.java"; then
	actual=$(wc -c <"Main.java")
	minimum=1
	echo $actual
	echo $minimum
	if [ $actual -gt $minimum ];then
		date >> error.log
		echo "file too big" >> error.log
	else
		date 
       		echo "compiling java using javac"
		javac Main.java
		date 
	        echo "compiled java class"
		date
		java Main myParam
		date 
	       	echo "running compiled java"
	fi
else
	date >> error.log 
       	echo "file not exist" >> error.log
fi
