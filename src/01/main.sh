#!/bin/bash
if [[ $# -ne 1 ]]; then
    echo "Illegal number of parameters"
elif [[ $1 =~ ^[0-9] ]]; then
    echo "Incorrect input"
else
    echo $1
fi
