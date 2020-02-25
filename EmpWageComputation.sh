#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
#VARIABLES
isPresent=1
PerHour=20
FullDay=8
PartTime=4
totalWorkingDays=0
totalWorkHours=0
#CONSTANTS
MAX_HRS_IN_MONTH=10
PERHOUR=20
NUM_WORKING_DAYS=20
	# CALCULATE BY USING  FUNCTION
function getWorkingHours()	
{ 	    randomCheck=$1
			case $randomCheck in
						# CALCULATING  FOR THE  FULL DAY
				1)
						WorkHrs=8
						;;
						# CALCULATING FOR THE PART TIME
			   2)
						WorkHrs=4
						;;
			   3)
 						WorkHrs=0
						;;
			esac
		#CALCULATING  WORKING HOURS
			echo "$WorkHrs"
}
function calcDailyWage()
{
	local works=$1
	wage=$(($WorkHrs*$PERHOUR))
	echo $wage
}

while [[ totalWorkHours -lt  $MAX_HRS_IN_MONTH && totalWorkingDays -lt $NUM_WORKING_DAYS  ]]
do
   ((totalWorkingDays++))
				WorkHrs="$( getWorkingHours $((RANDOM%3+1)) )"
			#FINDING  THE  TOTAL EMPLOYEE HOURS
				totalWorkHours=$(($totalWorkHours + $WorkHrs ))
				empDailyWage[$totalWorkingDays]="$( calcDailyWage $workHours )"
done
   totalSalary=$(($totalWorkHours * $PERHOUR));
	echo "Total hours :$totalWorkHours"
	echo "Total salary :$totalSalary"
	#BY USING THE ARRAY WE ARE PRINTING 
	echo "Daily Wage 	" ${empDailyWage[@]}	
