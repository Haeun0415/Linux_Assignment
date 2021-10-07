#!/bin/sh
if [ -z `echo $1 | grep -E "^[0-9]+$"` ] || [ -z `echo $2 | grep -E "^[0-9]+$"` ]
then
	echo "WRONG!!"
else
	for i in $(seq 1 $1)
	do
		line=""
		for j in $(seq 1 $2)
		do
			line="$line$i*$j=`expr $i \* $j` "
	done
	echo $line
done
fi
