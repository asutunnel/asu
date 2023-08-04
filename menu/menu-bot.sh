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
echo -e "\033[1;93m──────────────────────────────────────────────────────────\033[0m"
echo -e "\033[42m                      👑 ALVI CELL TUNNEL 👑          \033[0m"
echo -e "\033[1;93m────────────────────────────────────────────────────────────\033[0m"
echo -e ""
echo -e " \033[31m╭==========================================================╮\e[0m"
echo -e " \033[34m│$NC\033[33m                      DAFTAR MENU BOT                           $NC\033[34m│\e[0m"
echo -e " \033[32m╭=========================================================╮\e[0m"
echo -e " \033[35m│$NC [01]${NC} \033[0;36m JADI BOT${NC}"
echo -e " \033[35m│$NC [02]${NC} \033[0;36m add  bot${NC}"
echo -e " \033[35m│$NC [03]${NC} \033[0;36m Chek Bot Trojan${NC}"
echo -e " \033[35m│$NC [04]${NC} \033[0;36m Chek Bot Vless${NC}"
echo -e " \033[35m│$NC [05]${NC} \033[0;36m Chek Bot SSH${NC}"
echo -e " \033[35m│$NC [06]${NC} \033[0;36m Chek Bot Vmess${NC}"
#echo -e " \033[35m│$NC [07]${NC} \033[0;36m Chek User Login Bot ShadowSock${NC}"
echo -e " \033[35m│$NC [0]${NC} \033[0;36m Exit${NC}"
echo -e " \033[36m╰==========================================================╯\e[0m"

echo -e ""
read -p " silakan pilih menu bosku : " opt
echo -e ""
case $opt in
1) clear ; wget https://raw.githubusercontent.com/asutunnel/asu/main/bot/xpanel.sh && chmod +x xpanel.sh && ./xpanel.sh ;;
2) clear ; wget https://raw.githubusercontent.com/asutunnel/asu/main/bot/add-bot-notif.sh && chmod +x add-bot-notif.sh && ./add-bot-notif.sh ;;
3) clear ; wget https://raw.githubusercontent.com/asutunnel/asu/main/bot/bot-cek-tr.sh && chmod +x bot-cek-tr.sh && ./bot-cek-tr.sh ;;
4) clear ; wget https://raw.githubusercontent.com/asutunnel/asu/main/bot/bot-cek-vless.sh && chmod +x bot-cek-vless.sh && ./bot-cek-vless.sh ;;
5) clear ; wget https://raw.githubusercontent.com/asutunnel/asu/main/bot/bot-member-ssh.sh && chmod +x bot-member-ssh.sh && ./bot-member-ssh.sh ;;
6) clear ; wget https://raw.githubusercontent.com/asutunnel/asu/main/bot/bot-cek-ws.sh && chmod +x bot-cek-ws.sh && ./bot-cek-ws.sh ;;
0) clear ; menu ; exit ;;
x) exit ;;
esac
