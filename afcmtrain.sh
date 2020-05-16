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
clear
echo -e "\n"
figlet -c -k "GARUN - IDS"
echo -e "\n"
echo -e "\n[*]GARUN Building and CMC of data........"
cd AFCM
make
sleep 1
./afcm train.data
sleep 15
