#!/bin/bash
# COLOR VALIDATION
clear
RED='\033[0;31m'
NC='\e[0m'
gray="\e[1;30m"
Blue="\033[1;36m"
GREEN='\033[0;32m'
grenbo="\033[1;95m"
YELL='\033[1;33m'
BGX="\033[42m"
#UPDATE="https://raw.githubusercontent.com/rizkihdyt6/scupdate/rizki/"
#BOT="https://raw.githubusercontent.com/rizkihdyt6/scupdate/rizki/"
# Getting
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/asutunnel/permision/main/ipmini"
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
   echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
echo -e "\033[42m          ALVI CELL AUTOSCRIPT          \033[0m"
echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
echo -e ""
echo -e "            ${RED}PERMISSION DENIED !${NC}"
echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
echo -e "             \033[0;33mContact Admin :${NC}"
echo -e "      \033[0;36mTelegram${NC} t.me/Alvi_cell"
echo -e "      ${GREEN}WhatsApp${NC} wa.me/6282183496832"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
checking_sc
clear

echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e " \e[1;971m                      MENU BOT                \e[0m"
echo -e "\033[96m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "  ${grenbo}[1]${NC}${YELL} Add Bot Notifikasi${NC}"
echo -e "  ${grenbo}[2]${NC}${YELL} Delete Bot Notifikasi${NC}"
echo -e ""
echo -e "  ${grenbo}[0]${NC}${YELL} Back To Menu${NC}"
echo -e ""
read -p "  Select From Options [ 1 - 2 or 0 ] : " menu
case $menu in
1) clear ;
    add-bot-notif
    ;;
2) clear ;
    del-bot-notif
    ;;
0) clear ;
    menu
    ;;
*) clear ;
    menu
    ;;
esac
