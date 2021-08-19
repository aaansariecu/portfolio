#!/bin/bash

net_info="$(ifconfig)" #input from the commmand ifconfig

addresses=$(echo "$net_info" | sed -n '/inet / { 
    s/inet/IP Address:/
    s/netmask/\n\t\tSubnet Mask:/
    s/broadcast/\n\t\tBroadcast Address:/
    p
    }') 
echo -e "IP addresses on this computer are:\n$addresses" #format output
