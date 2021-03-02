#!/bin/bash

echo "Welcome to Employee Wage Computation"
att=$((RANDOM%2))
if [ $att -eq 0 ]
then
	echo "Employee is Absent"
else
	echo "Employee id Present"
fi

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
numWorkingDays=20;
Max_Hrs_in_month=100;
totalEmpHr=0
totalWorkingDays=0
while [[ $totalEmpHr -lt $Max_Hrs_in_month && $totalWorkingDays -lt $numWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3));
	case $empCheck in
        	$isFullTime)
                	empHrs=8;;
        	$isPartTime)
                	empHrs=4;;
        	*)
                empHrs=0;;
	esac
	totalEmpHr=$(($totalEmpHr+$empHrs))
done
	totalSalary=$(($totalEmpHr*$empRatePerHr))

echo "Wages for a Month:"$totalSalary
