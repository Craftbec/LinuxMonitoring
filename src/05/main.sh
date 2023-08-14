#!/bin/bash
export start=$(date +%s)
if [[ $# -ne 1 ]]; then
    echo "Incorrect number of parameters"
elif [[ "${1: -1}" != "/" ]]; then
    echo "Incorrect path"
elif [[ -d $1 ]]; then
    export path=$1
    ./1.sh
else
    echo "Incorrect"
fi
