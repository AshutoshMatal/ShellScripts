#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
isPresent=1
PerHour=20
FullDay=8
PartTime=4
random=$((RANDOM%2+1))
if [ $isPresent -eq $random ] 
then
	echo "Employee is Present " 
	randomCheck=$((RANDOM%2+1)) 
			if [ 1 -eq   $randomCheck ]
			then
   	 		 calculateDailyEmpWage=$(($PerHour*$FullDay))
	  			 echo "Daily wage full day :$calculateDailyEmpWage" 
			elif [ 2 -eq $randomCheck ]
			then
      		calculateDailyEmpWage=$(($PerHour*$PartTime))
				echo "salary of part Time :$calculateDailyEmpWage"
			fi
else
	echo "Employee is Absent "
 	empHrs=0
	salary=$(( $empHrs * $PerHour ))
fi

