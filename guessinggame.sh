#!/bin/bash 

function prompt {
	echo -n "How many files are in the current directory? "
	read guess
}

while true
do 
	prompt
	answer=$( ls | wc -l)

	if [[ ! $guess =~ ^\s*[0-9]+\s*$ ]]
	then
		echo "Please enter an positive integer!"
	elif [[ $guess -gt $answer ]]
	then
		echo "Wrong answer, $guess is too high!"
	elif [[ $guess -lt $answer ]]
	then
		echo "Wrong answer, $guess is too low!"
	else
		echo "Correct answer."
		echo "Congratulation!"
		break
	fi
	echo 
done
