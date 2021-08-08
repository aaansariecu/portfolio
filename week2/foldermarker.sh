#!/bin/bash
read -p "type the name of the folder you would like to create  " folderName ##read the input to create folder name
mkdir "$folderName" ##command to create directory
exit 0