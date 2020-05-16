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
echo -e  "\n[*] Installing............ : \n\n"
cd dataPreparation
chmod +x generateTrainingData.sh
./generateTrainingData.sh
sleep 2
echo -e  "\n[*] Data is loaded for AFMC : \n\n"
sleep 2
clear
echo -e "\n"
figlet -c -k "GARUN - IDS"
echo -e "\n\n"
cd ..
cd AFCM
make
sleep 1
./afcm train.data
sleep 5
cd ..
cd ANN
clear
echo -e "\n"
figlet -c -k "GARUN - IDS"
echo -e "\n\n"
make
echo -e  "\n[*] Training ANN......... : \n\n"
python engine.py
sleep 5
clear 
echo -e "\n\n\n\n"
figlet -c -k "Installation Successful"
sleep 10
clear
echo -e "\n\n"
echo -e  "\n[*] Garun is developed by : \n\n"
figlet -c -k "AVIRAL YADAV"
figlet -c -k "(AKTU-Bansal)"
figlet -c  "ID : 1642210021"
sleep 5


