#!/bin/bash
value=`cat ../week2/secret.txt`  #read the value from the text file, and assign it to var value
read -s -p  "Enter your password: " chkpassword #store input into veriable
echo #move cursor to a new line
hashpass=$(echo $chkpassword | sha256sum) #new convert into hash var to compare the value of secret.txt 
if [ "$value" = "$hashpass" ]; then #compare the value of secret.txt to the hashed value of the input
    echo "Access Granted" #compared hashed input to the secret.txt
else 
    echo "Access Denied." #if incorrectly input response
    exit
fi