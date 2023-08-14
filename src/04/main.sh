#!/bin/bash
if [[ $# -ne 0 ]]; then
    echo "Illegal number of parameters"
else
    source param.txt
    # Цвета фона
    case ${column1_background} in
    1) export background1="\033[0;47m"; export a="1 (white)" ;;
    2) export background1="\033[0;41m"; export a="2 (red)" ;;
    3) export background1="\033[0;42m"; export a="3 (green)" ;;
    4) export background1="\033[0;44m"; export a="4 (blue)" ;;
    5) export background1="\033[0;45m"; export a="5 (purple)" ;;
    6) export background1="\033[0;40m"; export a="6 (black)" ;;
    "") export background1="\033[0;106m"; export a="default (light blue)" ;;
    *) echo "Incorrect parameter"
    exit 1
    esac
    
    # Основные цвета
    case ${column1_font_color} in
    1) export front_colour1="\033[37m"; export b="1 (white)" ;;
    2) export front_colour1="\033[31m"; export b="2 (red)" ;;
    3) export front_colour1="\033[32m"; export b="3 (green)" ;;
    4) export front_colour1="\033[34m"; export b="4 (blue)" ;;
    5) export front_colour1="\033[35m"; export b="5 (purple)" ;;
    6) export front_colour1="\033[30m"; export b="6 (black)" ;;
    "") export front_colour1="\033[37m"; export b="default (gray)" ;;
    *) echo "Incorrect parameter"
    exit 1
    esac

    case ${column2_background} in
    1) export background2="\033[0;47m"; export c="1 (white)" ;;
    2) export background2="\033[0;41m"; export c="2 (red)" ;;
    3) export background2="\033[0;42m"; export c="3 (green)" ;;
    4) export background2="\033[0;44m"; export c="4 (blue)" ;;
    5) export background2="\033[0;45m"; export c="5 (purple)" ;;
    6) export background2="\033[0;40m"; export c="6 (black)" ;;
    "") export background2="\033[0;106m"; export c="default (light blue)" ;;
    *) echo "Incorrect parameter"
    exit 1
    esac

    case ${column2_font_color} in
    1) export front_colour2="\033[37m"; export d="1 (white)" ;;
    2) export front_colour2="\033[31m"; export d="2 (red)" ;;
    3) export front_colour2="\033[32m"; export d="3 (green)" ;;
    4) export front_colour2="\033[34m"; export d="4 (blue)" ;;
    5) export front_colour2="\033[35m"; export d="5 (purple)" ;;
    6) export front_colour2="\033[30m"; export d="6 (black)" ;;
    "") export front_colour2="\033[37m"; export d="default (gray)" ;;
    *) echo "Incorrect parameter"
    exit 1
    esac
    
    if [[ ${a} == ${b} || ${c} == ${d} ]]; then
    echo "Font and background colors cannot be the same"
    exit 1
    fi
    
   export end_color='\e[0m'
    
    ./1.sh
fi
