#!/bin/bash

filename=$1 #input 

if [ "$filename" == "" ]; then #check for file as input 
    echo "please input file"
    exit
fi

if [[ ! -f $filename ]]; then #return prompt for user to insert file name
    echo "Input file doesnt exists"
    exit
fi


while read line; do #read line loop
    if [[ -d $line ]]; then #compare name if that is a directory
        echo "$line - That’s a directory"
    elif [[ -f $line ]]; then #checking if the name if filename
        echo "$line - That file exists"
    else
        echo "$line - I don’t know what that is!"
    fi
done < $filename