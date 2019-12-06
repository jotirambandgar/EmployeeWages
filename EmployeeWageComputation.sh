#!/bin/bash -x
	echo "Welcome to Employee Wage computation"
	tempRandom=$(( RANDOM%2 ))
	if [ $tempRandom -eq 1 ]
		then
			echo "employee present"
	else
			echo "employee absent"
	fi

