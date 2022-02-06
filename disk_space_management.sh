#!/bin/bash

path=/home/elektronDevops/Logs
date=`date`
th_value=50
actual_value_space=`df -h  /dev/xvda1  | awk 'FNR==2{print $5}'  |tr -d '%'`


echo "$date | INFO | Got current value of disk space as $actul_value_space%"
echo "$date | INFO | our th_value is $th_value%"

#main  loop
if (( $actual_value_space >= $th_value ))
then
	 echo "$date | INFO | current value $actul_value_space% is greater than th_value"
         echo "$date | INFO | hence movd the path $path"

	cd $path
        >Elektron_BL.log
	echo "$date | INFO | file cleared successfully on the path $path"
fi
