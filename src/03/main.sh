#!/bin/bash
if [[ $# -ne 4 ]]; then
    echo "Illegal number of parameters"
else
    i=0
    while [ -n "$1" ]
    do
    case "$1" in
    1) array[i]="white" ;;
    2) array[i]="red" ;;
    3) array[i]="green" ;;
    4) array[i]="blue" ;;
    5) array[i]="purple" ;;
    6) array[i]="black" ;;
    *) echo "Incorrect parameter"
    exit 1
    esac
    i=$(( $i + 1 ))
    shift
    done
    
    if [[ ${array[0]} == ${array[1]} || ${array[2]} == ${array[3]} ]]; then
    echo "Font and background colors cannot be the same"
    exit 1
    fi
    
    # Основные цвета
    case ${array[0]} in
    white) export foreground1="\033[47m" ;;
    red) export foreground1="\033[41m" ;;
    green) export foreground1="\033[42m" ;;
    blue) export foreground1="\033[44m" ;;
    purple) export foreground1="\033[45m" ;;
    black) export foreground1="\033[40m" ;;
    esac
    
    case ${array[2]} in
    white) export foreground2="\033[47m" ;;
    red) export foreground2="\033[41m" ;;
    green) export foreground2="\033[42m" ;;
    blue) export foreground2="\033[44m" ;;
    purple) export foreground2="\033[45m" ;;
    black) export foreground2="\033[40m" ;;
    esac

    # Цвета фона
    case ${array[1]} in
    white) export background1="\033[0;37m" ;;
    red) export background1="\033[0;31m" ;;
    green) export background1="\033[0;32m" ;;
    blue) export background1="\033[0;34m" ;;
    purple) export background1="\033[0;35m" ;;
    black) export background1="\033[0;30m" ;;
    esac
    
    case ${array[3]} in
    white) export background2="\033[0;37m" ;;
    red) export background2="\033[0;31m" ;;
    green) export background2="\033[0;32m" ;;
    blue) export background2="\033[0;34m" ;;
    purple) export background2="\033[0;35m" ;;
    black) export background2="\033[0;30m" ;;
    esac

   export end_color='\e[0m'
    
    ./1.sh
fi
