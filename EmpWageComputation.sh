#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
isPresent=1
PerHour=20
FullDay=8
PartTime=4
randomCheck=$((RANDOM%3+1))
# USING THE CASE  CALCULATE  FULL TIME AND PART TIME 
case $randomCheck in
						# CALCULATING  FOR THE  FULL DAY
				1)
				 		calculateDailyEmpWage=$(($PerHour*$FullDay))
	  			 		echo "Daily wage full day :$calculateDailyEmpWage"
						;;
						# CALCULATING FOR THE FULL TIME 
		      2)
      				calculateDailyEmpWage=$(($PerHour*$PartTime))
						echo "salary of part Time :$calculateDailyEmpWage"
						;;
			   3)
 						empHrs=0
						salary=$(( $empHrs * $PerHour ))
						;;
esac


