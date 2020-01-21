#!/bin/bash -x

echo "Welcome to EmployeeWage"
# Declaring constants
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
HALF_DAY_HOUR=4

# Declaring variables
day=1
hour=0
salary=0

# calculating 100 hours salary
while [ $day -le 20 -a $hour -lt 100 ]
do

	attendance=$((RANDOM%2))
	case $attendance in
	0 )
		hour=$((hour + FULL_DAY_HOUR))
		if [ $hour -gt 100 ]
		then
			difference=$((hour - 100))
			salary=$((salary + $((WAGE_PER_HOUR * FULL_DAY_HOUR)) - $((WAGE_PER_HOUR * difference)) ))
		else
			salary=$((salary + $((WAGE_PER_HOUR * FULL_DAY_HOUR)) ))
		fi
		;;
	1 )
		hour=$((hour + HALF_DAY_HOUR))
		if [ $hour -gt 100 ]
		then
			difference=$((hour - 100))
			salary=$((salary + $((WAGE_PER_HOUR * HALF_DAY_HOUR)) - $((WAGE_PER_HOUR * difference)) ))
		else
			salary=$((salary + $((WAGE_PER_HOUR * HALF_DAY_HOUR)) ))
		fi
		;;
	esac
let day++

done

# printing 100 hours salary
echo "monthly salary is: " $salary


