#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
blue='\e[1;34m'
NC='\e[0m'
MYIP=$(wget -qO- https://icanhazip.com/)
IP=$(wget -qO- https://icanhazip.com/)
domain=$(cat /etc/v2ray/domain)

echo "Checking VPS"
sleep 1
clear
IZIN=$( curl https://raw.githubusercontent.com/xfjdllvbnrt/zqdsgsajxfsteumnloa/main/zzxytsvfmplmioertqsfgtw.txt | grep $MYIP )
clear
if [ $MYIP = $IZIN ]; then
echo -e "===================================="
echo -e "${green}Permission Accepted...${NC}"
echo -e "===================================="
echo -e " "
else
echo -e "===================================="
echo -e "${red}Permission Denied!${NC}";
echo -e "===================================="
echo -e " "
echo -e "Only For Premium Users"
echo -e " "
echo -e "${blue}Please Contact Admin${NC}"
echo -e "Telegram : t.me/mawarx86"
echo -e "WhatsApp : wa.me/625876948650"
echo -e "Email : mawarx86@gmail.com"
echo -e "===================================="
echo -e " "
exit 0
fi
clear
source /var/lib/premium-script/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/v2ray/domain)
else
domain=$IP
fi
tls="$(cat ~/log-install.txt | grep -w "Vmess TLS" | cut -d: -f2|sed 's/ //g')"
none="$(cat ~/log-install.txt | grep -w "Vmess None TLS" | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; do
		read -rp "User: " -e user
		CLIENT_EXISTS=$(grep -w $user /etc/v2ray/config.json | wc -l)

		if [[ ${CLIENT_EXISTS} == '1' ]]; then
			echo ""
			echo "A client with the specified name was already created, please choose another name."
			exit 1
		fi
	done
uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "Expired (days): " masaaktif
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
tglbuat=`date -d "0 days" +"%Y-%m-%d"`
sed -i '/#tls$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'","alterId": '"2"',"email": "'""$user""'"' /etc/v2ray/config.json
sed -i '/#none$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'","alterId": '"2"',"email": "'""$user""'"' /etc/v2ray/none.json
cat>/etc/v2ray/$user-tls.json<<EOF
      {
      "v": "0",
      "ps": "${user}",
      "add": "${domain}",
      "port": "${tls}",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/v2ray",
      "type": "none",
      "host": "${domain}",
      "tls": "tls"
}
EOF
cat>/etc/v2ray/$user-none.json<<EOF
      {
      "v": "0",
      "ps": "${user}",
      "add": "${domain}",
      "port": "${none}",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/v2ray",
      "type": "none",
      "host": "${domain}",
      "tls": "none"
}
EOF
vmess_base641=$( base64 -w 0 <<< $vmess_json1)
vmess_base642=$( base64 -w 0 <<< $vmess_json2)
vmesslink1="vmess://$(base64 -w 0 /etc/v2ray/$user-tls.json)"
vmesslink2="vmess://$(base64 -w 0 /etc/v2ray/$user-none.json)"
systemctl restart v2ray
systemctl restart v2ray@none
service cron restart
clear
cat <<EOF
 
━━━━━━━━━━━━━━━━━━
         V2RAY/VMESS Account Details
━━━━━━━━━━━━━━━━━━
Remarks : ${user}
Host/IP : ${MYIP}
Host/Domain : ${domain}
Port TLS : $tls
port none TLS : $none
ID : ${uuid}
AlterID : 0
Security : auto
Network : ws
Path : /v2ray
━━━━━━━━━━━━━━━━━━
Link TLS : ${vmesslink1}
━━━━━━━━━━━━━━━━━━
Link none TLS : ${vmesslink2}
━━━━━━━━━━━━━━━━━━
Created : $tglbuat
Expired : $exp
━━━━━━━━━━━━━━━━━━
Autoscript by $(cat /etc/w-list1)
━━━━━━━━━━━━━━━━━━

Thank    You    for    Using    Our    Service
           $(cat /etc/w-list2) $(cat /etc/w-list2)
━━━━━━━━━━━━━━━━━━
 
EOF