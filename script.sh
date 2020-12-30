#!/bin/sh

echo "Enter Start Number"
read start_num
echo "Enter End Number"
read end_num

#end_num=`expr $end_num+1`
echo ""
echo "list of prime number between $start_num and $end_num "
for ((i=$start_num;i<=$end_num;i++))
do
    count=0
    if [ $i -ge 2 ]
    then
	for ((j=2;j<=$i;j++))
	do
	    if (($i%$j==0))
	    then
       	        count=`expr $count + 1`
	    fi
	done
	if [ $count -eq 1 ]
	then
	    echo $i
	fi
    fi
done
