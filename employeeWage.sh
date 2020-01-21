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

# calling function to calculating 100 hours salary
while [ $day -le 20 -a $hour -lt 100 ]
do
	attendance=$((RANDOM%2))
	case $attendance in
	0 )
		Employee_wage_for_hour
		;;
	1 )
		Employee_wage_for_hour
		;;
	esac
let day++

done

Employee_Wage_for_hour()
{
	
	if [ $attendance -eq 0 ]
	then
		hour=$((hour + FULL_DAY_HOUR))
		salary=$((salary + $((WAGE_PER_HOUR * FULL_DAY_HOUR)) ))
	else
		hour=$((hour + HALF_DAY_HOUR))
		salary=$((salary + $((WAGE_PER_HOUR * HALF_DAY_HOUR)) ))

	fi
}
# printing 100 hours salary
echo "monthly salary is: " $salary


