#!/bin/bash

# LX13
# Until test
# testing the until and while condition


Time=0

#until [ $Time -eq 59 ]; do
#	Time=`date +%S`
#	echo $Time
#	sleep 1
#done

while [ $Time -ne 59 ]; do
	Time=`date +%S`
	echo $Time
	sleep 1
done

