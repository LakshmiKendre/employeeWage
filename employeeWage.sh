#!/bin/bash -x

echo "Welcome to EmployeeWage"
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
HALF_DAY_HOUR=4
attendance=$((RANDOM%3))
if [ $attendance -eq 1 ]
then
	echo Present
	echo "Daily wage (full-day)= " $((WAGE_PER_HOUR * FULL_DAY_HOUR))
elif [ $attendance -eq 0 ]
then
	echo Absent
	echo "Daily wage = 0" 
else
	echo Present
	echo "Daily wage (half-day) = "$((WAGE_PER_HOUR * HALF_DAY_HOUR))
fi
