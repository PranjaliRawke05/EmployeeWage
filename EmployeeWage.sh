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
echo "Salary ::"$salary
