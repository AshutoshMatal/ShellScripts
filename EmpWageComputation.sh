#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
isPresent=1
PerHour=20
FullDay=8
random=$((RANDOM%2+1))
if [ $isPresent -eq $random ] 
then
echo "Employee is Present "
calculateDailyEmpWage=$(($PerHour*$FullDay))
echo "Daily wage :$calculateDailyEmpWage"
else
echo "Employee is Absent "
fi

