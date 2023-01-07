#!/bin/bash
counter=0
while [ $counter -lt 3 ]
do
	play emi.mp3
	sleep 5
	let counter=counter+1
done
