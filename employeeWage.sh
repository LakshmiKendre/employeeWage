#!/bin/bash -x

echo "Welcome to EmployeeWage"
# Declaring constants
WAGE_PER_HOUR=20

# Declaring variables
day=1
hour=0
total_salary=0

# using function getting work hours of employee
get_working_hour()
{
	attendance=$((RANDOM%2))
	case $attendance in
		0)
			working_hour=8
			;;
		1)
			working_hour=4
			;;
	esac
	echo $working_hour
}

#calculating 100 hours salary of employee
Employee_wage_for_hour()
{	
	work_hour=$1
	salary=$((WAGE_PER_HOUR * work_hour))
	echo $salary
}

# calling function to calculating 100 hours salary
while [ $day -le 20 -a $hour -lt 100 ]
do
	work_hrs="$(get_working_hour)"
	total_salary=$((total_salary + "$(Employee_wage_for_hour $work_hrs)"))
	hour=$((hour + work_hrs))
let day++

done


# printing 100 hours salary
if [ $hour -gt 100 ]
then
	diff=$((hour-100))
	total_salary=$((total_salary + ${arr[day]} - $((WAGE_PER_HOUR * $diff )) ))
	echo "Total salary is: " $total_salary
else
	echo "Total salary is: " $total_salary
fi

