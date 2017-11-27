#!/bin/bash
# guessing game bash script

function getNumFiles () {
	ls | wc -l
	return $1
}

function getUserGuess () {
	read -p 'Guess the number of files in the current Directory!  >> ' userChoice
	echo $userChoice
	return $userChoice
}

function testGuess () {
	if [[ $numFiles -eq $userGuess ]]
	then
		proceed=0
		echo "Congratualtions!! $userGuess is the correct number of files!"
	elif [[ $numFiles -gt $userGuess ]]
	then
		proceed=1
		echo "Sorry your guess of $userGuess is too low.  Try again"
	else
		proceed=1
		echo "Sorry your guess of $userGuess is too high.  Try again"
	fi
}

#################### START HERE #################
#set switch 1 for continue,  0 for stop
proceed=1
# get the number of directories in a file
numFiles=$(getNumFiles)
#check to see if user is correct
while [[ $proceed -ne 0 ]]
do
	userGuess=$(getUserGuess)
	testGuess
done

echo "Bye"



	 