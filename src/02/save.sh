#! /bin/bash

read -p "Write data to file (Y/N)?"

if [[ $REPLY == Y || $REPLY == y ]]; then
    file_name="$(date +"%d_%m_%y_%H_%M_%S").status"
    ./print.sh > $file_name
fi
