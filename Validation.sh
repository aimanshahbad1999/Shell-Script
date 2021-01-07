#!/bin/sh

email_reg="^[a-zA-Z0-9.+-]+@[a-zA-Z0-9.-]+\.[a-z.]+$"
file="Email.txt"
while read line;
do
    if [[ $line =~ $email_reg ]]
    then
	echo "$line is Valid Email"
    else
	echo "$line is Not Valid Email"
    fi
    #echo $line
done < $file
