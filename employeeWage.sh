#!/bin/bash -x

echo "Welcome to EmployeeWage"

if [ $((RANDOM%2)) -eq 0 ]
then
	echo Absent
else
	echo Present
fi
