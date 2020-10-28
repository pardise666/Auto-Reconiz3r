#!/bin/bash
function menu {
#colors
red=`tput setaf 1`
reset=`tput sgr0`
        clear
        echo
        echo -e "\t\t\t${red}
===========================================================================
|    _         _              ____                      _     _____       |
|   / \  _   _| |_ ___       |  _ \ ___  ___ ___  _ __ (_)___|___ / _ __  |
|  / _ \| | | | __/ _ \ _____| |_) / _ \/ __/ _ \| '_ \| |_  / |_ \| '__| |
| / ___ \ |_| | || (_) |_____|  _ <  __/ (_| (_) | | | | |/ / ___) | |    |
|/_/   \_\__,_|\__\___/      |_| \_\___|\___\___/|_| |_|_/___|____/|_|    |
===========================================================================

${reset}\n"
        echo -e "\t1. Directory Search"
        echo -e "\t0. Exit Menu\n\n"
        echo -en "\t\tEnter an Option: "
        read -n 1 option
}
function dirsearch {
        clear
	read -p "Enter The Url = " url
	read -p "Enter The Extension =" ext
        python3 src/dirsearch/dirsearch.py -u $url -e $ext
}



while [ 1 ]
do
        menu
        case $option in
        0)
        break ;;
        1)
        dirsearch ;;

        *)
        clear
        echo "Wrong selection";;
        esac
        echo -en "\n\n\t\t\tHit any key to continue"
        read -n 1 line
done
clear
