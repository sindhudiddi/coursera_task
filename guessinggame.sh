#!/usr/bin/env bash

fileCount=$(ls -1 | wc -l)

function guessingGame {
    if [[ $1 -lt $2 ]]
    then
	echo "Your Guess is too low...!"
    elif [[ $1 -gt $2 ]]
    then
	echo "Your guess is too high...!"
    else
	echo ""
	echo "Congratulations!"
    fi
}

while [[ $fileCount -ne $guess ]]
do
    read -p "Guess how many files are in the current directory? " guess
    echo $(guessingGame $guess $fileCount)
    echo ""
done