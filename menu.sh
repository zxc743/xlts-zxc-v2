#!/bin/bash
clear
echo -e "\e[36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;41;36m            XRAY - MENU            \E[0m"
echo -e "\e[36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""   
echo -e " [\e[36m•1\e[0m] Menu Vmess"
echo -e " [\e[36m•2\e[0m] Menu Vless "
echo -e " [\e[36m•3\e[0m] Menu Trojan"
echo -e " [\e[36m•4\e[0m] Menu Trojan-ws "
echo -e " [\e[36m•5\e[0m] Menu Vless gRPC "
echo -e " [\e[36m•6\e[0m] SPEEDTEST SG "
echo -e " [\e[36m•7\e[0m] SPEEDTEST ID "
echo -e " [\e[36m•8\e[0m] SPEEDTEST ID2 "
echo -e " [\e[36m•9\e[0m] Cek Status Vmess "
echo -e " [\e[36m•10\e[0m] Cek Status Vless "
echo -e " [\e[36m•11\e[0m] Cek Status Trojan"
echo -e " [\e[36m•12\e[0m] Cek Status Trojan-ws "
echo -e " [\e[36m•13\e[0m] Cek Status Vless gRPC "
echo -e " [\e[36m•14\e[0m] Cek Status Nginx "
echo -e " [\e[36m•15\e[0m] Restart Vmess "
echo -e " [\e[36m•16\e[0m] Restart Vless "
echo -e " [\e[36m•17\e[0m] Restart Trojan"
echo -e " [\e[36m•18\e[0m] Restart Trojan-ws "
echo -e " [\e[36m•19\e[0m] Restart Vless gRPC "
echo -e " [\e[36m•20\e[0m] Restart Nginx "
echo -e " [\e[36m•21\e[0m] Clear Log "
echo -e " [\e[36m•22\e[0m] FIX RAM "
echo -e ""
echo -e " [\e[31m•0\e[0m] \e[31mBACK TO MENU\033[0m"
echo -e   ""
echo -e   "Press x or [ Ctrl+C ] • To-Exit"
echo -e ""
echo -e "\e[36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; menu-vmess ;;
2) clear ; menu-vless ;;
3) clear ; menu-trojan;;
4) clear ; menu-trojanws ;;
5) clear ; menu-vlgrpc ;;
6) clear ; speedtest -s 2054;;
7) clear ; speedtest -s 7582;;
8) clear ; speedtest -s 26047;;
9) clear ; systemctl status xray@vmess;;
10) clear ; systemctl status xray@vless;;
11) clear ; systemctl status xray@trojan ;;
12) clear ; systemctl status xray@trojanws ;;
13) clear ; systemctl status xray@vlgrpc ;;
14) clear ; systemctl status nginx ;;
15) clear ; systemctl restart xray@vmess ;;
16) clear ; systemctl restart xray@vless ;;
17) clear ; systemctl restart xray@trojan ;;
18) clear ; systemctl restart xray@trojanws ;;
19) clear ; systemctl restart xray@vlgrpc ;;
20) clear ; systemctl restart nginx ;;
21) clear ; cat /dev/null > /var/log/xray/vmess.log;cat /dev/null > /var/log/xray/vless.log;cat /dev/null > /var/log/xray/trojan.log;cat /dev/null > /var/log/xray/trojan.log;cat /dev/null > /var/log/xray/trojanws.log;cat /dev/null > /var/log/xray/ssws.log;cat /dev/null > /var/log/xray/vlgrpc.log ;;
22) clear ; systemctl stop nginx;systemctl stop xray@trojan;systemctl stop xray@vmess;systemctl stop xray@vless;systemctl stop xray@trojanws;systemctl stop xray@vlgrpc;systemctl daemon-reload;systemctl restart nginx;systemctl restart xray@trojan;systemctl restart xray@vmess;systemctl restart xray@vless;systemctl restart xray@trojanws;systemctl restart xray@vlgrpc;;
0) clear ; menu ;;
x) exit ;;
*) echo -e "" ; echo "Press any key to back on menu" ; menu ;;
esac

