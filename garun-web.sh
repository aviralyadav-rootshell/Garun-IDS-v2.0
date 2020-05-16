#!/bin/bash
clear
echo -e "\n"
###############################
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
echo -e  "\n[*] STARTING THE GARUN-CAPTURE on $1 ............ : \n\n"
cd ANN
for((i=0; ;++i)); do
    echo -e "\n\n"
    echo phase $i
    echo ===================================================================================================================================================
    tcpdump -w cap01.pcap -i $1 -c 1000 > /dev/null 2>&1
    echo "Read 1000 packets"
    /usr/local/bro/bin/bro -r cap01.pcap darpa2gurekddcup.bro > conn.list 2>/dev/null
    sort -n conn.list > conn_sort.list
    ./trafAld.out conn_sort.list
    awk '{print $5" "$6" "$7" "$9" "$11" "$12" "$29" "$30" "$38" "$39" "$41" "$42" "$44}' trafAld.list > cap.txt
    awk '{if($4=="80")$4="21";else if($4=="53")$4="9";else if($4=="123")$4="41";else if($4=="22")$4="54";if($4=="443")$4="23";if($4=="8")$4="12";else $4="47";print $0}' cap.txt > tmp && mv tmp cap.txt
    #awk -F ',' -i inplace 'if$2=='
    echo "Finished processing 1000 packets"
    #sleep 1
    python -W ignore engine.py
    echo ===================================================================================================================================================
done
