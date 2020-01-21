#!/bin/bash -x

echo "Welcome to EmployeeWage"
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
HALF_DAY_HOUR=4

attendance=$((RANDOM%3))

case $attendance in
0 )
	echo "Daily wage = 0" 
	;;
1 )
	echo "Daily wage (full-day)= " $((WAGE_PER_HOUR * FULL_DAY_HOUR))
	;;
2 )
	echo "Daily wage (half-day) = "$((WAGE_PER_HOUR * HALF_DAY_HOUR))
	;;
esac
