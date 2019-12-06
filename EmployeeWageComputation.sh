#!/bin/bash -x
	echo "Welcome to Employee Wage computation"
	tempRandom=$(( RANDOM%2 ))
	if [ $tempRandom -eq 1 ]
		then
			echo "employee present"
			dailyWage=$(( 8*20 ))
	else
			echo "employee absent"
	fi

