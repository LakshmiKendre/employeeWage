#!/bin/bash -x

echo "Welcome to EmployeeWage"
# Declaring constants
WAGE_PER_HOUR=20

# Declaring variables
day=1
hour=0
total_salary=0

# Getting working hours
get_working_hours()
{
	attendance=$((RANDOM%2))
	case $attendance in
	0)
		working_hours=4
		;;
	1)
		working_hours=8
		;;
	*)
		working_hours=0
		;;
	esac
echo $working_hours
}

# calculating daily wage of Employee
Employee_wage_for_hour()
{
	work_hrs=$1
	salary=$(($((WAGE_PER_HOUR * work_hrs)) ))
	echo $salary
}

while [ $day -le 20 -a $hour -lt 100 ]
do
	work_hour="$(get_working_hours)"
	arr[day]="$(Employee_wage_for_hour $work_hour)"
	hour=$((hour+ work_hour))
	total_salary=$((total_salary + ${arr[day]}))
	let day++

done

# printing 100 hours salary
echo "daily salary is: " ${arr[@]}
if [ $hour -gt 100 ]
then	
	diff=$((hour-100))
	total_salary=$((total_salary - $(( $diff * WAGE_PER_HOUR )) ))
	echo "Total salary is: " $total_salary
else
	echo "Total salary is: " $total_salary
fi
