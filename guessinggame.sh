#!/usr/bin/env bash
#File:guessinggame.sh

count=0
actual=$(ls -l | wc -l)
let actual=$actual-1

readcount(){
read count
}
echo "Guess how many files are in the current directory"
while [[ $count -ne $actual ]]
do
   readcount
   if [[ $count -lt $actual ]]
   then
       echo "This is very low,please guess again"
       continue
     
   elif [[ $count -gt $actual ]]
   then
       echo "This is too high,please guess again"
       continue
   fi
done

if [[ $count -eq actual ]]
then
   echo "Congratulations! You selected the right number"
fi   
  
