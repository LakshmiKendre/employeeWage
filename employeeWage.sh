#!/bin/bash -x

echo "Welcome to EmployeeWage"
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
if [ $((RANDOM%2)) -eq 1 ]
then
	echo "(Present)Daily wage = " $((WAGE_PER_HOUR * FULL_DAY_HOUR))
else
	echo "(Absent)Daily wage = 0" 
fi
