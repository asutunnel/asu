RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
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
echo -e "\033[42m          👑 ALVI CELL TUNNEL 👑         \033[0m"
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
uuid=$(cat /etc/trojan-go/uuid.txt)
source /var/lib/SIJA/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi
trgo="$(cat ~/log-install.txt | grep -w "Trojan Go" | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${user_EXISTS} == '0' ]]; do
read -rp "User : " -e user
user_EXISTS=$(grep -w $user /etc/trojan-go/akun.conf | wc -l)
if [[ ${user_EXISTS} == '1' ]]; then
echo ""
echo -e "Username ${RED}${user}${NC} Already On VPS Please Choose Another"
exit 1
fi
done
uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "Expired (Days) : " masaaktif
sed -i '/"'""$uuid""'"$/a\,"'""$user""'"' /etc/trojan-go/config.json
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
hariini=`date -d "0 days" +"%Y-%m-%d"`
echo -e "### $user $exp" >> /etc/trojan-go/akun.conf
systemctl restart trojan-go.service
link="trojan-go://${uuid}@isi_bug_disini:${trgo}/?sni=${domain}&type=ws&host=${domain}&path=%2Ftrojango#$user"
link1="trojan://${uuid}@isi_bug_disini:${trgo}/?sni=${domain}&type=ws&host=${domain}&path=%2Ftrojango#$user"
clear
echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
echo -e "\033[42m          👑 ALVI CELL TUNNEL 👑         \033[0m"
echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "\E[0;41;36m          TROJAN GO          \E[0m" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Remarks    : ${user}" | tee -a /etc/log-create-user.log
echo -e "IP/Host    : ${MYIP}" | tee -a /etc/log-create-user.log
echo -e "Address    : ${domain}" | tee -a /etc/log-create-user.log
echo -e "Port       : ${trgo}" | tee -a /etc/log-create-user.log
echo -e "Key        : ${uuid}" | tee -a /etc/log-create-user.log
echo -e "Encryption : none" | tee -a /etc/log-create-user.log
echo -e "Path       : /trojango" | tee -a /etc/log-create-user.log
echo -e "Created    : $hariini" | tee -a /etc/log-create-user.log
echo -e "Expired    : $exp" | tee -a /etc/log-create-user.log
echo -e "========================="
echo -e "Link TrGo  		: ${link}" | tee -a /etc/log-create-user.log
echo -e "Link TrGo (v2rayNG)	: ${link1}" | tee -a /etc/log-create-user.log
echo -e "========================="
echo -e "Script Mod By ALVI CELL"
echo "" | tee -a /etc/log-create-user.log
read -n 1 -s -r -p "Press any key to back on menu"
menu
