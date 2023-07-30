#!/bin/bash


DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
grenbo="\e[92;1m"
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
export CHATID="5862048483"
export KEY="6307367714:AAG_Gae1CEjB-BDTYLzHSb89kbmLxzln7mk"
export TIME="10"
export URL="https://api.telegram.org/bot$KEY/sendMessage"
clear
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/asutunnel/permission/main/ipmini"
checking_sc() {
useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
if [[ $date_list < $useexp ]]; then
echo -ne
else
echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
echo -e "\033[42m          👑 ALVI CELL TUNNEL 👑          \033[0m"
echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
echo -e ""
echo -e "            ${RED}PERMISSION DENIED !${NC}"
echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
echo -e "             \033[0;33mContact Admin :${NC}"
echo -e "      \033[0;36mTelegram${NC} t.me/Dragon_Emperor999"
echo -e "      ${GREEN}WhatsApp${NC} wa.me/6283821682527"
echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
exit
fi
}
checking_sc
clear
function editquota(){
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/vmess/.vmess.db")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
clear
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "           Edit Quota Vmess          \E[0m"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo "You have no existing clients!"
echo ""
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
fi
clear
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "           Edit Quota Vmess          \E[0m"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
grep -E "^### " "/etc/vmess/.vmess.db" | cut -d ' ' -f 2 | column -t | sort | uniq
echo ""
red "tap enter to go back"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -rp "Input Username : " user
if [ -z $user ]; then
menu
else
read -p "Limit (Quota): " Quota
echo -e "$[$Quota * 1024 * 1024 * 1024]" > /etc/vmess/${user}
clear
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo " VMESS Account Was Successfully Edited"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo " Client Name  : $user"
echo " Quota Ready  : $Quota GB"
echo ""
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
fi
}
function editlimit(){
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/vmess/.vmess.db")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
clear
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "           Edit Limit Vmess          \E[0m"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo "You have no existing clients!"
echo ""
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
fi
clear
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "           Edit Limit Vmess          \E[0m"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
grep -E "^### " "/etc/vmess/.vmess.db" | cut -d ' ' -f 2 | column -t | sort | uniq
echo ""
red "tap enter to go back"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -rp "Input Username : " user
if [ -z $user ]; then
menu
else
read -p "Limit (IP): " ips
echo -e "${ips}" > /etc/vmess/limit-ip/${user}
clear
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo " VMESS Account Was Successfully Edited"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo " Client Name  : $user"
echo " Limit IP Ready  : $ips IP"
echo ""
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
fi
}
function resquota(){
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/vmess/.vmess.db")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
clear
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "           Resset Quota Vmess          \E[0m"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo "You have no existing clients!"
echo ""
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
fi
clear
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "           Resset Quota Vmess          \E[0m"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
grep -E "^### " "/etc/vmess/.vmess.db" | cut -d ' ' -f 2 | column -t | sort | uniq
echo ""
red "tap enter to go back"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -rp "Input Username : " user
if [ -z $user ]; then
menu
else
echo "0" > /etc/limit/vmess/${user}
clear
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo " VMESS Account Was Successfully Resset"
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo " Client Name  : $user"
echo " Successfully Resset Quota"
echo ""
echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
fi
}
clear
echo -e " \033[31m************************\ 👑 ALVI CELL TUNNEL 👑  \033[34m****************************\e[0m"
echo -e " \033[31m╭************************************************************\e[0m"
echo -e " \033[34m│$NC\033[33m                  MENU VMESS                         $NC\033[34m│\e[0m"
echo -e " \033[33m************************************************************\e[0m"
echo -e " \033[32m************************************************************\e[0m"
echo -e " \033[35m│$NC [01]${NC} \033[0;36m Create Account XRAY Vmess Websocket${NC}"
echo -e " \033[35m│$NC [02]${NC} \033[0;36m Trial Account XRAY Vmess ${NC}"
echo -e " \033[35m│$NC [03]${NC} \033[0;36m Delete Account XRAY Vmess Websocket${NC}"
echo -e " \033[35m│$NC [04]${NC} \033[0;36m Renew VMESS Account${NC}"
echo -e " \033[35m│$NC [05]${NC} \033[0;36m Check VMESS login Account${NC}"
echo -e " \033[35m│$NC [06]${NC} \033[0;36m Edit Quota Account ${NC}"
echo -e " \033[35m│$NC [07]${NC} \033[0;36m Edit Limit IP Account${NC}"
echo -e " \033[35m│$NC [08]${NC} \033[0;36m Reset Quota Account${NC}"
echo -e " \033[35m│$NC"
echo -e " \033[35m│$NC [\e[31m•0\e[0m] \e[31mBACK TO MENU\033[0m"
echo -e " \033[35m│$NC"
echo -e " \033[31m************************\ 👑 ALVI CELL TUNNEL 👑  \033[34m****************************\e[0m"
echo -e ""
read -p " silakan pilih menu bosku: " menu
case $menu in
1) clear ; add-ws ; exit ;;
2) clear ; trialvmess ; exit ;;
3) clear ; del-ws ; exit ;;
4) clear ; renew-ws ; exit ;;
5) clear ; cek-ws ; exit ;;
6) clear ; editquota ; exit ;;
7) clear ; editlimit ; exit ;;
8) clear ; resquota ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; menu ;;
esac
