#!/bin/bash
read -p  "Enter folder name: " foldername #Folder name input in defined variable 
read -sp "Enter  Secret password: " secretpassword # Password input value in defined variable 
echo #move cursor to a new line
##echo “$secretpassword” > ~/scripts/portfolio/$foldername/secret.txt #append user input as password from the defined variable to text file secret.txt
echo $secretpassword | sha256sum > $foldername/secret.txt #append user input as hashed password from the defined variable to text file secret.txt
exit 0 #successful termination of the programss