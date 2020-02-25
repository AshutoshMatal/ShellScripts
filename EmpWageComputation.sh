#/bin/bash -x
echo "Welcome to Employee Wage Computation"
#VARIABLES
isPresent=1
PerHour=20
FullDay=8
PartTime=4
totalWorkingDays=0
totalEmpHr=0
#CONSTANTS
MAX_HRS_IN_MONTH=100
PERHOUR=20
NUM_WORKING_DAYS=20
	# CALCULATE BY USING WHILE LOOP 
while [[ totalEmpHr -lt  $MAX_HRS_IN_MONTH && totalWorkingDays -lt $NUM_WORKING_DAYS  ]]
do
	((totalWorkingDays++))
		randomCheck=$((RANDOM%3+1)) 
			case $randomCheck in
						# CALCULATING  FOR THE  FULL DAY
				1)
				 		calculateDailyEmpWage=$(($PERHOUR * $FullDay))
						empHrs=8
						;;
						# CALCULATING FOR THE PART TIME 
		      2)
      				calculateDailyEmpWage1=$(($PERHOUR * $PartTime))
						empHrs=4
						;;
			   3)
 						empHrs=0
						;;
			esac
#FINDING  THE  TOTAL EMPLOYEE HOURS
				totalEmpHr=$(( $totalEmpHr + $empHrs ))

done
   echo "Daily wage full day :$calculateDailyEmpWage"
   echo "Daily wage of part Time :$calculateDailyEmpWage1"
   totalSalary=$(($totalEmpHr * $PERHOUR));
	echo "Total hours :$totalEmpHr"
	echo "Total salary :$totalSalary"
