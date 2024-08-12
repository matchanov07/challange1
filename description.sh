#!/bin/bash

function slow_print() {
    local text="$1"
    local delay=0.06
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep $delay
    done
    echo ""
}

slow_print "Description of PowerShell file!"
slow_print "This PowerShell script is designed to stop specific processes by name. The task is to identify and stop processes that match a certain name, printing the flag once the process isstopped."
slow_print "<<<<<<<<<HINT>>>>>>>>>>>>"
slow_print "You should start any procces and get your flag, This process can be a program that creates and saves texts on your laptop!"
