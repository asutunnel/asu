#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip)
green_background="\033[42;37m"
NC="\033[0m"
red_background="\033[41;37m"
wh="\e[1;37m" # PUTIH
cy="\e[1;36m" # CYAN
ye="\e[1;33m" # KUNING
clear 
clear
echo -e " \033[31m╭══════════════════════════════════════════════════════════╮\e[0m"
echo -e " \033[34m│$NC\033[33m                      DAFTAR MENU BOT                           $NC\033[34m│\e[0m"
echo -e " \033[33m╰══════════════════════════════════════════════════════════╯\e[0m"
echo -e " \033[32m╭══════════════════════════════════════════════════════════╮\e[0m"
echo -e " \033[35m│$NC [01]${NC} \033[0;36m Daftar BOT${NC}"
echo -e " \033[35m│$NC [02]${NC} \033[0;36m add notifikasi bot${NC}"
echo -e " \033[35m│$NC [03]${NC} \033[0;36m Chek User Login Bot Trojan${NC}"
echo -e " \033[35m│$NC [04]${NC} \033[0;36m Chek User Login Bot Vless${NC}"
echo -e " \033[35m│$NC [05]${NC} \033[0;36m Chek User Login Bot SSH${NC}"
echo -e " \033[35m│$NC [06]${NC} \033[0;36m Chek User Login Bot Vmess${NC}"
#echo -e " \033[35m│$NC [07]${NC} \033[0;36m Chek User Login Bot ShadowSock${NC}"
echo -e " \033[35m│$NC [0]${NC} \033[0;36m Exit${NC}"
echo -e " \033[36m╰══════════════════════════════════════════════════════════╯\e[0m"

echo -e ""
read -p " Select From Options [ 1 - 4 ] : " opt
echo -e ""
case $opt in
1) clear ; wget https://raw.githubusercontent.com/asutunnel/panel/main/xolpanel.sh && chmod +x xolpanel.sh && ./xolpanel.sh ;;
2) clear ; add-bot-notif ; exit ;;
3) clear ; bot-cek-tr ; exit ;;
4) clear ; bot-cek-vless ; exit ;;
5) clear ; bot-member-ssh ; exit ;;
6) clear ; bot-cek-ws ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
esac
