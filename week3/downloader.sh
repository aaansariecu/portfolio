#!/bin/bash

URLadder=`echo -e "Please type the URL of a file to download or type exit to leave: "`

read -p "$URLadder" URL #reading user input

until [ $URL = quit ] #user input action to exit of typed quit

do
    #user input select directory.

    folderName=`echo -e "Please type the directory name you would like to save the file to: "`

    read -p "$folderName" folderName  

    wget $URL -N -nv -P ${folderName/\~/$HOME} #command to download desired URL

    read -p "$URLadder" URL

done

echo -e "Thank you come again!" && exit 0