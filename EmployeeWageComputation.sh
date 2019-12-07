#!/bin/bash -x
	echo "Welcome to Employee Wage computation"
	#xTEMP_RANDOM=$(( RANDOM%2 ))
	FULLDAY_WORKING_HOURS=8
	HALFDAY_WORKING_HOURS=4
	WAGES=20
	FULL_DAY=1
	PART_TIME=0
	WORKING_MONTH_DAY=20
	counter=0;
	for(( i=0 ; i<20 ;i++)) 
	do
	tempRandom=$(( RANDOM%2 ))

	if [ $tempRandom -eq 1 ]
		then
			echo "employee present"
			timeStatus=$(( RANDOM%2 ))
			case $timeStatus in
						$FULL_DAY )
									dailyWage=$(( $FULLDAY_WORKING_HOURS * $WAGES ))
									;;
						$PART_TIME )
									 dailyWage=$(( $HALFDAY_WORKING_HOURS * $WAGES ))
									;;
			esac
	else
			dailyWage=0
			echo "employee absent"
	fi
			echo "wage of day $i = $dailyWage "
			echo "$dailyWage"
			monthlyWage=$(( $dailyWage * $WORKING_MONTH_DAY ))
	done
