#!/bin/bash
blue=`tput setaf 21` #using tput to change text color effects and setaf for 256 colour selection
green=`tput setaf 34`
red=`tput setaf 1`
purple=`tput setaf 91`

reset=`tput sgr0` #to reinitialization the memory

echo "Colour coded calculator"
sum=0
i="y"
echo "enter first number" #user input prompt for the first digit 
read n1 #read input from first prompt
echo "enter second number" #user input prompt for the second digit 
read n2 #read input from first prompt
while [ $i = "y" ] #represent the option check
do
echo "1.Addition" #requesting user input for desired calculation
echo "2.Subtraction" #requesting user input for desired calculation
echo "3.Multiplication" #requesting user input for desired calculation
echo "4.Division" #requesting user input for desired calculation
echo "Enter choice" #requesting user input for desired calculation
read ch 
case $ch in #read the conditionals statement 
#next lines will perform the calculations as per the user input
1)sum=$(echo " $n1 + $n2" | bc -l) 
echo "$(tput setaf 21)Addition is =" $sum$(tput sgr 0);;
2)sum=$(echo "$n1 - $n2" | bc -l)
echo "$(tput setaf 34)Sub is =" $sum$(tput sgr 0);;
3)sum=$(echo "$n1 * $n2" | bc -l)
echo "$(tput setaf 1)Mul is =" $sum$(tput sgr 0);;
4)sum=$(echo "$n1 / $n2" | bc -l)
echo "$(tput setaf 91)div is =" $sum$(tput sgr 0);;
*)echo "invalid choice"
esac
echo "Do you want to continue" #prompt to seek user input 
echo "Y to continue or N to exit"
read i
if [ $i != "y" ] #script will reinitialize and display the menu 
then
exit
fi
done
