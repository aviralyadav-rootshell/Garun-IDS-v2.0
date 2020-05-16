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
sleep 2
clear
echo -e "\n"
figlet -c -k "GARUN - IDS"
echo -e "\n"
echo -e  "\n[*] Collecting data............ : \n\n"
cd dataPreparation
chmod +x generateTrainingData.sh
./generateTrainingData.sh
sleep 2
echo -e  "\n[*] Data is loaded for AFMC : \n\n"
sleep 10
