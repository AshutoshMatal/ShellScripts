#/bin/bash -x
echo "Welcome to Employee Wage Computation"
isPresent=1
PerHour=20
FullDay=8
PartTime=4
numWorkingDays=20
totalSalary=0
randomCheck=$((RANDOM%3+1))

# USING THE CASE  CALCULATE  FULL TIME AND PART TIME
for (( day=1; day<=numWorkingDays; day++ ))
do
	randomCheck=$((RANDOM%3+1)) 
			case $randomCheck in
						# CALCULATING  FOR THE  FULL DAY
				1)
				 		calculateDailyEmpWage=$(($PerHour*$FullDay))
						;;
						# CALCULATING FOR THE FULL TIME 
		      2)
      				calculateDailyEmpWage=$(($PerHour*$PartTime))
						;;
			   3)
 						empHrs=0
						salary=$(( $empHrs * $PerHour ))
						;;
			esac
done
 echo "Daily wage full day :$calculateDailyEmpWage"
   echo "salary of part Time :$calculateDailyEmpWage"
   totalSalary=$(($totalSalary + $calculateDailyEmpWage));

