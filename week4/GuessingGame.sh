
#!/bin/bash



printError() #This function prints a given error 
{
    echo -e "\033[31mERROR:\033[0m $1"
}

getNumber() #This function checks if the value is between 1 and 100.
{
    read -p "$1"
    while (( $REPLY < 1 || $REPLY > 100 ))
    do
        printError "Input must be between 1 and 100"
        read -p "$1"
    done
}


getNumber "Please type a number between 1 and 100: " #User iinput request

while (( $REPLY != 42 )) #guessing loop, it will keep prompting until correct number input
do
    if [ $REPLY -lt 42 ]
    then
        echo "Too low! "
    elif [ $REPLY -gt 42 ]
        then
            echo "Too high! "
    fi
    getNumber "Please type a number between 1 and 100:"
done


if [ $REPLY -eq "42" ] #if input is 42, display Right.
then
    echo "RIGHT!!"
    exit 0
fi
