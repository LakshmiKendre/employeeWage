#!/bin/bash -x

echo "Welcome to EmployeeWage"
# Declaring constants
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
HALF_DAY_HOUR=4

# Declaring variables
day=1
salary=0

# calculating monthly salary
while [ $day -le 20 ]
do
	attendance=$((RANDOM%3))
	case $attendance in
	0 )
		salary=$((salary + 0)) 
		;;
	1 )
		salary=$((salary + $((WAGE_PER_HOUR * FULL_DAY_HOUR)) ))
		;;
	2 )
		salary=$((salary + $((WAGE_PER_HOUR * HALF_DAY_HOUR)) ))
		;;
	esac
let day++
done

# printing monthly salary
echo "monthly salary is: " $salary


