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

function getWorkingHours(){
 case $1 in
                $isFullTime)
                        workHours=8;;
                $isPartTime)
                        workHours=4;;
                *)
                workHours=0;;
        esac
	echo $workHours
}



while [[ $totalEmpHr -lt $Max_Hrs_in_month && $totalWorkingDays -lt $numWorkingDays ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours $((RANDOM%3)) )"
	totalWorkHr=$(($totalWorkHr+$workHours))
done
	totalSalary=$(($totalWorkHr*$empRatePerHr))

echo "Wages for a Month:"$totalSalary
