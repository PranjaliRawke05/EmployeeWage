#!/bin/bash

echo "Welcome to Employee Wage Computation"

att=$((RANDOM%2))
if [ $att -eq 0 ]
then
	echo "Employee is Absent"
else
	echo "Employee id Present"
fi
