 #!/bin/bash -x
echo "Welcome to Employee Wage computation"
FULLDAY_WORKING_HOURS=8
HALFDAY_WORKING_HOURS=4
WAGES=20
FULL_DAY=1
PART_TIME=0
WORKING_MONTH_DAY=20

counter=0;
day=0
workingHours=100
totalWage=0
declare -A monthlyWage;

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

while [[ $WORKING_MONTH_DAY -ne 0 && $workingHours -gt 0 ]] 
do
	tempRandom=$(( RANDOM%2 ))

	if [ $tempRandom -eq 1 ]
		then
			echo "employee present"
			hour=$(getWorkingHrs)
			dailyWage=$(( $hour * $WAGES ))
	      workingHours=$(( $workingHours - $hour))
	else
			dailyWage=0
			echo "employee absent"
	fi
			day=$(( $day + 1 ))
			dayKey="DAY $day"
			echo "wage of day $day = $dailyWage "
			echo "$workingHours"
			WORKING_MONTH_DAY=$(( $WORKING_MONTH_DAY - 1 ))
			totalWage=$(( $totalWage + $dailyWage ))
			dailyTotalWage="$dailyWage  $totalWage"
			monthlyWage[$dayKey]=$dailyTotalWage
	done
echo "${monthlyWage[DAY 1]}"
