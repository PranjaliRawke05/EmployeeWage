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
totalSalary=0;
numWorkingDays=20;
for (( day=1; day<=$numWorkingDays; day++))
do
	empCheck=$((RANDOM%3));
	case $empCheck in
        	$isFullTime)
                	empHrs=8;;
        	$isPartTime)
                	empHrs=4;;
        	*)
                	empHrs=0;;
	esac
salary=$(($empHrs*$empRatePerHr));
totalSalary=$(($totalSalary+$salary))
done
echo "Salary ::"$salary
echo "Wages for a Month:"$totalSalary
