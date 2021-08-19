#!/bin/bash
SCRIPT1_PATH="../week2/passwordCheck.sh" ##define path of the script 
SCRIPT2_PATH="../week2/foldermarker.sh" ##define path of the script 
SCRIPT3_PATH="../week2/foldercopier.sh" ##define path of the script 
SCRIPT4_PATH="../week2/setPassword.sh" ##define path of the script 
SCRIPT5_PATH="calculator.sh" ##define path of the script 
SCRIPT6_PATH="megafoldermaker.sh" ##define path of the script
SCRIPT7_PATH="filenames.sh"  ##define path of the script 
SCRIPT8_PATH="downloader.sh"  ##define path of the script 

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
echo "4.Calculator" ##choice selection the calculator.sh script 
echo "5.Week Folder creator" ##choice selection the megafoldermaker.sh script 
echo "6.File Name check"  ##choice selection the filenames.sh script 
echo "7.File downloader"  ##choice selection the downloader.sh script 
echo "Type Y to continue or N to exit"
read ch ##read the input into veriable 
    case $ch in ##Syntax of bash case statement, When a match is found all of the associated statements until the double semicolon (;;) are executed
1)source "$SCRIPT2_PATH" ;; ##choice selection the source script 
2)source "$SCRIPT3_PATH" ;; ##choice selection the source script 
3)source "$SCRIPT4_PATH" ;; ##choice selection the source script 
4)source "$SCRIPT5_PATH" ;; ##choice selection the source script 
5)source "$SCRIPT6_PATH" ;; ##choice selection the source script 
6)source "$SCRIPT7_PATH" ;; ##choice selection the source script 
7)source "$SCRIPT8_PATH" ;; ##choice selection the source script 
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