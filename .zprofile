#!/bin/zsh   

if [ $(($RANDOM % 2)) = 0 ]
then
    echo -en "\e]P0282A36"
    echo -en "\e]P1FF5555"
    echo -en "\e]P250FA7B"
    echo -en "\e]P3F1FA8C"
    echo -en "\e]P48BE9FD"
    echo -en "\e]P5BD93F9"
    echo -en "\e]P6FFB86C"
    echo -en "\e]P7F8F8F2"
    echo -en "\e]P86272A4"
    echo -en "\e]P9FF5555"
    echo -en "\e]PA50FA7B"
    echo -en "\e]PBF1FA8C"
    echo -en "\e]PC8BE9FD"
    echo -en "\e]PDBD93F9"
    echo -en "\e]PEFFB86C"
    echo -en "\e]PFF8F8F2"
else
    echo -en "\e]P0282828"
    echo -en "\e]P1CC241D"
    echo -en "\e]P298971A"
    echo -en "\e]P3D79921"
    echo -en "\e]P4458588"
    echo -en "\e]P5B16286"
    echo -en "\e]P6689D6A"
    echo -en "\e]P7A89984"
    echo -en "\e]P8928374"
    echo -en "\e]P9FB4934"
    echo -en "\e]PAB8BB26"
    echo -en "\e]PBFABD2F"
    echo -en "\e]PC83A598"
    echo -en "\e]PDD3869B"
    echo -en "\e]PE8EC07C"
    echo -en "\e]PFEBDBB2"
fi
clear
pfetch
