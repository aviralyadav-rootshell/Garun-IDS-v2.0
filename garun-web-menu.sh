#!/bin/bash

HEIGHT=12
WIDTH=30
CHOICE_HEIGHT=4
BACKTITLE=" Interface Menu"
TITLE="GARUN-IDS"
MENU="Choose Interface To monitor:"

ifslist=$(basename -a /sys/class/net/*)
array=(${ifslist[0]})
echo ${array[1]}


OPTIONS=(0 "${array[0]}"
         1 "${array[1]}"
         2 "${array[2]}"
         3 "${array[3]}")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
echo -e "\n"
figlet -c -k "GARUN - IDS"
echo -e "\n"
echo -e "\n[*]GARUN  started........"
gotty ./garun-web.sh ${array[$CHOICE]}

echo -e "\n\n"

