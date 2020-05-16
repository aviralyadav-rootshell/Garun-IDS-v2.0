#!/bin/bash

HEIGHT=30
WIDTH=50
CHOICE_HEIGHT=10
BACKTITLE="MAIN MENUE"
TITLE="GARUN-IDS"
MENU="Choose Your Interface(choose Install to insatall)"




OPTIONS=(1 "Install"
         2 "Web-Interface-Run"
         3 "Terminal-Interface-Run"
         4 "Generate Data"
         5 "FCM-Clustering"
         6 "Train ANN")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

echo ${array[$CHOICE]}

echo -e "\n\n\n\n"
case $CHOICE in
        1)
            ./setup.sh
            ;;
        2)  
            ./garun-web-menu.sh
            ;;
        3)
            ./garun-cli.sh
            ;;
        4)  
            chmod +x generatedata.sh
            ./generatedata.sh
            ;;
        5)  
            chmod +x afcmtrain.sh
            ./afcmtrain.sh
            ;;
        6)  
            chmod +x anntrain.sh
            ./anntrain.sh
            ;;
esac
