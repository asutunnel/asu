#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################
# Getting
export CHATID="5999635647"
export KEY="6135754848:AAGktOrc7F_nCKgQVq_C8f1Gn8vKvGPzNCg"
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
source /var/lib/SIJA/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi
PUB=$( cat /etc/slowdns/server.pub )
NS=(cat /root/nsdomain)

tls="$(cat ~/log-install.txt | grep -w "Trojan WS TLS" | cut -d: -f2|sed 's/ //g')"
ntls="$(cat ~/log-install.txt | grep -w "Trojan WS none TLS" | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; do
echo -e " \033[31m##########\033[33m##########\033👑 ALVI CELL TUNNEL 👑\033[34m##########\033[35m##########\033[36m##########\e[0m"
echo -e " \033[31m╭══════════════════════════════════════════════════════════╮\e[0m"
echo -e " \033[34m│$NC\033[33m                      Trojan ACCOUNT                      $NC\033[34m│\e[0m"
echo -e " \033[33m╰══════════════════════════════════════════════════════════╯\e[0m"

		read -rp "User: " -e user
		CLIENT_EXISTS=$(grep -w $user /etc/xray/config.json | wc -l)

		if [[ ${CLIENT_EXISTS} == '1' ]]; then
clear
            echo -e " \033[33m╭══════════════════════════════════════════════════════════╮\e[0m"
            echo -e " \033[32m│$NC\033[33m                      Trojan ACCOUNT                      $NC\033[32m│\e[0m"
            echo -e " \033[35m╰══════════════════════════════════════════════════════════╯\e[0m"
			echo ""
			echo "A client with the specified name was already created, please choose another name."
			echo ""
			echo -e "\033[31m##########\033[33m##########\033[32m##########\033[34m##########\033[35m##########\033[36m##########\e[0m"
			read -n 1 -s -r -p "Press any key to back on menu"			
menu
		fi
	done

read -p "Bug Address (Example: www.google.com) : " address
read -p "Bug SNI/Host (Example : m.facebook.com) : " hst
bug_addr=${address}.
bug_addr2=${address}
if [[ $address == "" ]]; then
sts=$bug_addr2
else
sts=$bug_addr
fi
bug=${hst}
bug2=bug.com
if [[ $hst == "" ]]; then
sni=$bug2
else
sni=$bug
fi

uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "Limit User (GB): " Quota
read -p "Limit User (IP): " iplim
read -p "Expired (days): " masaaktif
#mkdir -p /etc/vmess/limit-ip
#echo ${iplim} >> /etc/trojan/limit-ip/${user}
tgl=$(date -d "$masaaktif days" +"%d")
bln=$(date -d "$masaaktif days" +"%b")
thn=$(date -d "$masaaktif days" +"%Y")
expe="$tgl $bln, $thn"
tgl2=$(date +"%d")
bln2=$(date +"%b")
thn2=$(date +"%Y")
tnggl="$tgl2 $bln2, $thn2"
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#trojanws$/a\#! '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json
sed -i '/#trojangrpc$/a\#! '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json

trojanlink1="trojan://${uuid}@${domain}:443?mode=gun&security=tls&type=grpc&serviceName=trojan-grpc&sni=bug.com#${user}"
trojanlink="trojan://${uuid}@isi_bug_disini:443?path=%2Ftrojan-ws&security=tls&host=${domain}&type=ws&sni=${domain}#${user}"
trojanlink2="trojan://${uuid}@isi_bug_disini:80?path=%2Ftrojan-ws&security=none&host=${domain}&type=ws#${user}"

cat > /home/vps/public_html/$user-TRTLS.yaml <<EOF
port: 7890
socks-port: 7891
redir-port: 7892
mixed-port: 7893
tproxy-port: 7895
ipv6: false
mode: rule
log-level: silent
allow-lan: true
external-controller: 0.0.0.0:9090
secret: ""
bind-address: "*"
unified-delay: true
profile:
  store-selected: true
dns:
  enable: true
  ipv6: false
  enhanced-mode: redir-host
  listen: 0.0.0.0:7874
  nameserver:
    - 8.8.8.8
    - 1.0.0.1
    - https://dns.google/dns-query
  fallback:
    - 1.1.1.1
    - 8.8.4.4
    - https://cloudflare-dns.com/dns-query
    - 112.215.203.254
  default-nameserver:
    - 8.8.8.8
    - 1.1.1.1
    - 112.215.203.254
proxies:
  - name: ${user}
    server: ${sts}
    port: 443
    type: trojan
    password: ${uuid}
    skip-cert-verify: true
    sni: ${domain}
    network: ws
    ws-opts:
      path: /trojan-ws
      headers:
        Host: ${domain}
    udp: true
proxy-groups:
  - name: FASTSSH-SSHKIT-HOWDY
    type: select
    proxies:
      - ${user}
      - DIRECT
rules:
  - MATCH,FASTSSH-SSHKIT-HOWDY
EOF

cat > /home/vps/public_html/$user-TRTLSCDN.yaml <<EOF
- name: Trojan-$user
  server: ${sts}
  port: 443
  type: trojan
  password: ${uuid}
  network: ws
  sni: $domain
  skip-cert-verify: true
  udp: true
  ws-opts:
   path: /trojan
   headers:
    Host: ${domain}
EOF

cat > /home/vps/public_html/$user-TRNOTLSCDN.yaml <<EOF
- name: Trojan-$user
  type: trojan
  server: ${sts}
  port: 80
  uuid: ${uuid}
  cipher: auto
  udp: true
  tls: false
  skip-cert-verify: false
  network: ws
  ws-opts:
   path: /trojan
   headers:
    Host: ${domain}
EOF

cat > /home/vps/public_html/$user-TRGrpcCDN.yaml <<EOF
- name: Trojan-$user
  server: ${sts}
  port: 443
  type: trojan
  password: $uuid
  network: grpc
  sni: $domain
  skip-cert-verify: true
  udp: true
   grpc-opts:
    grpc-service-name: "trojan-grpc"
EOF

#Ceker
systemctl restart xray
if [ ! -e /etc/trojan ]; then
  mkdir -p /etc/trojan
fi

if [ -z ${Quota} ]; then
  Quota="0"
fi

c=$(echo "${Quota}" | sed 's/[^0-9]*//g')
d=$((${c} * 1024 * 1024 * 1024))

if [[ ${c} != "0" ]]; then
  echo "${d}" >/etc/trojan/${user}
fi
DATADB=$(cat /etc/trojan/.trojan.db | grep "^#!" | grep -w "${user}" | awk '{print $2}')
if [[ "${DATADB}" != '' ]]; then
  sed -i "/\b${user}\b/d" /etc/trojan/.trojan.db
fi
echo "#! ${user} ${exp} ${uuid}" >>/etc/trojan/.trojan.db
clear
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "\E[0;41;36m           TROJAN ACCOUNT           \E[0m" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Remarks        : ${user}" | tee -a /etc/log-create-user.log
echo -e "Host/IP        : ${domain}" | tee -a /etc/log-create-user.log
echo -e "Host XrayDNS   : ${NS}" | tee -a /etc/log-create-user.log
echo -e "Pub Key        : ${PUB}" | tee -a /etc/log-create-user.log
echo -e "User Quota     : ${Quota} GB" | tee -a /etc/log-create-user.log
echo -e "Limit IP       : ${iplim} IP" | tee -a /etc/log-create-user.log
echo -e "Wildcard       : (bug.com).${domain}" | tee -a /etc/log-create-user.log
echo -e "Port TLS       : 443" | tee -a /etc/log-create-user.log
echo -e "Port none TLS  : 80" | tee -a /etc/log-create-user.log
echo -e "Port gRPC      : 443" | tee -a /etc/log-create-user.log
echo -e "OpenClash Ws   : 443" | tee -a /etc/log-create-user.log
echo -e "CDN TLS        : 443" | tee -a /etc/log-create-user.log
echo -e "CDN No TLS     : 80" | tee -a /etc/log-create-user.log
echo -e "CDN Grpc       : 443" | tee -a /etc/log-create-user.log
echo -e "Key            : ${uuid}" | tee -a /etc/log-create-user.log
echo -e "Path           : /trojan-ws" | tee -a /etc/log-create-user.log
echo -e "ServiceName    : trojan-grpc" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Link TLS       : ${trojanlink}" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Link none TLS  : ${trojanlink2}" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Link gRPC      : ${trojanlink1}" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Yaml Clash Ws  : http://${IP}:81/$user-TRTLS.yaml"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "CDN TLS        : http://${IP}:81/$user-TRTLSCDN.yaml"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "CDN No TLS     : http://${IP}:81/$user-TRNOTLSCDN.yaml"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "CDN Grpc       : http://${IP}:81/$user-TRGrpcCDN.yaml"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Link CDN & OpenClash : https://${domain}:81/trojan-$user.txt"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" 
echo -e "Link Via Qris  :https://api.qrserver.com/v1/create-qr-code/?size=400x400&data=${trojanlink}"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Expired On     : $exp" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo "" | tee -a /etc/log-create-user.log
read -n 1 -s -r -p "Press any key to back on menu"
menu
#fi
