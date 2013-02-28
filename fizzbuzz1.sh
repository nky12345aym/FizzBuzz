#!/bin/bash

for go in $(seq 1 100)
#ふぃずばず判定 とかループとか
do
	if test ` expr $go % 15 ` -eq 0
	then
		echo "fizzbuzz"
	elif test ` expr $go % 3 ` -eq 0
	then
		echo "fizz"
	elif test ` expr $go % 5 ` -eq 0
	then
		echo "buzz"

		

	else
		echo $go
	fi
done


