#!/bin/bash

# LX13
# Just a small test of while loops

while read -p "Enter password: " Pass
do
	if [ "$Pass" = "secret" ]; then
	echo "Password Correct!!"
	break
	fi
done


