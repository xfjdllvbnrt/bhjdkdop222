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
read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (hari): " masaaktif
ssl="$(cat ~/log-install.txt | grep -w "Stunnel4" | cut -d: -f2)"
sqd="$(cat ~/log-install.txt | grep -w "Squid" | cut -d: -f2)"
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
sleep 1
echo Ping Host
echo Cek Hak Akses...
sleep 0.5
echo Permission Accepted
clear
sleep 0.5
echo Membuat Akun: $Login
sleep 0.5
echo Setting Password: $Pass
sleep 0.5
clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
tglbuat=`date -d "0 days" +"%Y-%m-%d"`
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
clear
cat <<EOF
 
━━━━━━━━━━━━━━━━━━
       SSH & OPENVPN Account Details
━━━━━━━━━━━━━━━━━━
Host/IP : $MYIP
Host/Domain : $domain
Username : $Login
Password : $Pass
━━━━━━━━━━━━━━━━━━
Port OpenSSH : 22
Port Dropbear : 109, 143
Port SSL/TLS :$ssl
Port SSH WS non SSL : 2082
Port SSH WS SSL : 443
Port Squid :$sqd
Port UDPGW : 7100, 7200, 7300
━━━━━━━━━━━━━━━━━━
Payload WS-CDN :
GET wss://bug.com/ HTTP/1.1[crlf]Host: $domain[crlf]Upgrade: websocket[crlf][crlf]
━━━━━━━━━━━━━━━━━━
OpenVPN Link Download :
TCP : http://$MYIP:81/client-tcp-$ovpn.ovpn
UDP : http://$MYIP:81/client-udp-$ovpn2.ovpn
SSL : http://$MYIP:81/client-tcp-ssl.ovpn
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