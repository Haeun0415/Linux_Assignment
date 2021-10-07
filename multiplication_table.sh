#!/bin/sh
for i in $(seq 1 $1)
do
	line=""
	for j in $(seq 1 $2)
	do
		line="$line$i*$j=`expr $i \* $j` "
done
echo $line
done
