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
uuid=$(cat /etc/trojan/uuid.txt)
source /var/lib/premium-script/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/v2ray/domain)
else
domain=$IP
fi
tr="$(cat ~/log-install.txt | grep -i Trojan | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${user_EXISTS} == '0' ]]; do
		read -rp "Password: " -e user
		user_EXISTS=$(grep -w $user /etc/trojan/akun.conf | wc -l)

		if [[ ${user_EXISTS} == '1' ]]; then
			echo ""
			echo "A client with the specified name was already created, please choose another name."
			exit 1
		fi
	done
read -p "Expired (days): " masaaktif
sed -i '/"'""$uuid""'"$/a\,"'""$user""'"' /etc/trojan/config.json
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
tglbuat=`date -d "0 days" +"%Y-%m-%d"`
echo -e "### $user $exp" >> /etc/trojan/akun.conf
systemctl restart trojan
trojanlink="trojan://${user}@${domain}:${tr}?sni=bug.com#${user}"
clear
cat <<EOF
 
━━━━━━━━━━━━━━━━━━
                   TROJAN Account Details
━━━━━━━━━━━━━━━━━━
Remarks : ${user}
Host/IP : ${MYIP}
Host/Domain : ${domain}
Port : ${tr}
Key : ${user}
━━━━━━━━━━━━━━━━━━
Link Trojan : ${trojanlink}
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