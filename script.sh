#!/bin/sh

echo "Enter Start Number"
read start_num
echo "Enter End Number"
read end_num


function check_prime(){
    count=0
    for ((j=2;j<=$1;j++))
	do
	    if (($1%$j==0))
	    then
       	        count=`expr $count + 1`
	    fi
    done
    if [ $count -eq 1 ]
	then
	    echo $1
    fi
}



echo ""
echo "list of prime number between $start_num and $end_num "
for ((i=$start_num;i<=$end_num;i++))
do
    count=0
    if [ $i -ge 2 ]
    then
	check_prime $i	    
    fi
done
