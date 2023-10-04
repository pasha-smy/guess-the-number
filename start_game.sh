#!/bin/bash
cycle() {
clear
number=$RANDOM
attempt=0
until [[ $answer == $number  ]]
do
    echo -n "What number did I guess?: "
    read answer
    if [[ $answer -lt $number ]]; then
            attempt=$(($attempt+1))
            echo "More"
        elif [[ $answer -gt $number ]]; then
            attempt=$(($attempt+1))
            echo "Less"
        else  
            attempt=$(($attempt+1))
            echo "You guessed it right!"
            echo -n "Enter your name:"
            read winner_name 
            echo  "$winner_name: $attempt" >> winners.txt
    fi
done
# Repeat the game? Yes / No
}
echo "Welcome to the game "Guess the number""
cycle
