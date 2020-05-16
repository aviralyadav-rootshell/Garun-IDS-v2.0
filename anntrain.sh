#!/bin/bash
clear
echo -e "\n"
figlet -c -k "GARUN - IDS"
echo -e "\n"
echo -e "\n[*]GARUN  started........"
sleep 2
echo -e  "\n[*] Garun is developed by : \n\n"
figlet -c -k "AVIRAL YADAV"
figlet -c -k "(AKTU-Bansal)"
figlet -c  "ID : 1642210021"
sleep 5
cd ANN
clear
echo -e "\n"
figlet -c -k "GARUN - IDS"
echo -e "\n"
echo -e  "\n[*] Training start for 3 layer ANN... : \n\n"
echo -e "\n"
make
echo -e  "\n[*] Training ANN......... : \n\n"
python engine.py
sleep 5
