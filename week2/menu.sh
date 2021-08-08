#!/bin/bash
SCRIPT1_PATH="passwordCheck.sh" ##define path of the script 
SCRIPT2_PATH="foldermarker.sh" ##define path of the script 
SCRIPT3_PATH="foldercopier.sh" ##define path of the script 
SCRIPT4_PATH="setPassword.sh" ##define path of the script 
i="y" #if the input of yes at the end of the script 
echo "Welcome to Menu"  ##Menu header welcome 
source "$SCRIPT1_PATH"  ##define path of the script, it will call passwordCheck.sh

cont="true"

    while [ $i = "y" ] #input response
do
echo "Enter choice:"  ##input selection prompt
echo "1.Create a folder" ##choice selection for the foldermarker.sh script
echo "2.Copy a folder" ##choice selection for the foldercopier.sh script 
echo "3.Set a password" ##choice selection the setPassword.sh script 
read ch ##read the input into veriable 
    case $ch in ##Syntax of bash case statement, When a match is found all of the associated statements until the double semicolon (;;) are executed
1)source "$SCRIPT2_PATH" ;; ##choice selection the source script 
2)source "$SCRIPT3_PATH" ;; ##choice selection the source script 
3)source "$SCRIPT4_PATH" ;; ##choice selection the source script 
*)echo "invalid choice" ##invalid choice selection will prompt for valid choice
esac ##expression to evaluate and to execute several different statements based on the value of the expression
echo "Do you want to continue"
echo "Y to continue or N to exit"
read i
if [ $i != "y" ]
then
exit
fi
done