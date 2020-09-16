#!/usr/bin/env bash
#File:guessinggame.sh

count=0
readcount(){
echo "Guess how many files are in the current directory"
read count
}

while [[ $count -ne 3 ]]
do
   readcount
   if [[ $count -lt 3 || $count -gt 3 && $count -le 5 ]]
   then
       echo "You are very close, guess again"
       continue
     
   elif [[ $count -gt 5 ]]
   then
       echo "This is too high, guess again"
       continue
   fi
done

if [[ $count -eq 3 ]]
then
   echo "Congratulations! You selected the right number"
fi   