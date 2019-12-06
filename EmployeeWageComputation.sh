#!/bin/bash -x
	echo "Welcome to Employee Wage computation"
	TEMP_RANDOM=$(( RANDOM%2 ))
	FULLDAY_WORKING_HOURS=8
	HALFDAY_WORKING_HOURS=4
	WAGES=20
	if [ $TEMP_RANDOM -eq 1 ]
		then
			echo "employee present"
			dailyWage=$(( $FULLDAY_WORKING_HOURS * $WAGES ))
	else
			echo "employee absent"
	fi

