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
	DAY=0
	HOURS=100
function getWorkingHrs(){
 timeStatus=$(( RANDOM%2 ))
         case $timeStatus in
                  $FULL_DAY )
                           echo $FULLDAY_WORKING_HOURS 
                                                   ;;
                  $PART_TIME )
                            echo $HALFDAY_WORKING_HOURS 
                           ;;
			esac
}
	while [[ $WORKING_MONTH_DAY -ne 0 && $HOURS -gt 0 ]] 
	do
	tempRandom=$(( RANDOM%2 ))

	if [ $tempRandom -eq 1 ]
		then
			echo "employee present"
			hour=$(getWorkingHrs)
			dailyWage=$(( $hour * $WAGES ))
	      HOURS=$(( $HOURS - $hour))
	else
			dailyWage=0
			echo "employee absent"
	fi
			DAY=$(( $DAY + 1 ))
			echo "wage of day $DAY = $dailyWage "
			echo "$HOURS"
			WORKING_MONTH_DAY=$(( $WORKING_MONTH_DAY - 1 )) 
	done
