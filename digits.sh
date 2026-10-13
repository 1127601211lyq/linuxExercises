#!/bin/bash

range={1000..2000}
sum=0

for num in $range;
	   if [[ $num -eq [01]* ]];
	      $sum == $sum + $num
	   fi

echo $sum
	      
