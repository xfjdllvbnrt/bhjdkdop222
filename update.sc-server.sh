#!/bin/bash
#update sc-server
red='\e[1;31m'
green='\e[0;32m'
blue='\e[1;34m'
NC='\e[0m'
versi=$(cat /home/ver)
if [ $versi == 3.3 ]; then
echo -e "${blue}You Have The Latest Version${NC}"
sleep 5
exit 0
else
rm -f /root/log-update.txt
echo -e "==================================="
echo -e "${green}Update Avaible to 3.3{NC}"
echo -e "  "
echo -e " LOG UPDATE" | tee -a log-update.txt
echo -e " " | tee -a log-update.txt
echo -e " Ver 3.3" | tee -a log-update.txt
echo -e " - Upgrade V2ray Core" | tee -a log-update.txt
echo -e " - Stunnel Fix Inecure" | tee -a log-update.txt
echo -e " - Fix Backup" | tee -a log-update.txt
echo -e " " | tee -a log-update.txt
sleep 1
echo -e "==================================="
echo -e "You want to update now?"
read -rp "Type 1 to start update, 0 to exit: " kok
echo -e "==================================="
    if [ 1 = $kok ]; then
    echo -e "===================================="
    echo -e "${green}Start Updating...${NC}"
    echo -e "===================================="
    echo -e " "
    sleep 1
    else
    exit
    fi
apt-get update -y && apt-get upgrade -y
cd /usr/bin
echo -e "========================"
echo -e "  Please wait....."
echo -e "========================"
wget -q -O about "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/about.sh" && chmod +x about
wget -q -O add.host "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/add.host.sh" && chmod +x add.host
wget -q -O add.hostx "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/add.hostx.sh" && chmod +x add.hostx
wget -q -O add.l2tp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/add.l2tp.sh" && chmod +x add.l2tp
wget -q -O add.pptp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/add.pptp.sh" && chmod +x add.pptp
wget -q -O add.ss "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/add.ss.sh" && chmod +x add.ss
wget -q -O add.ssh "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/add.ssh.sh" && chmod +x add.ssh
wget -q -O add.ssr "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/add.ssr.sh" && chmod +x add.ssr
wget -q -O add.sstp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/add.sstp.sh" && chmod +x add.sstp
wget -q -O add.tr "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/add.tr.sh" && chmod +x add.tr
wget -q -O add.vless "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/add.vless.sh" && chmod +x add.vless
wget -q -O add.vmess "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/add.vmess.sh" && chmod +x add.vmess
wget -q -O add.wg "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/add.wg.sh" && chmod +x add.wg
wget -q -O autobackup "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/autobackup.sh" && chmod +x autobackup
wget -q -O autokill "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/autokill.sh" && chmod +x autokill
wget -q -O autoreboot "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/autoreboot.sh" && chmod +x autoreboot
wget -q -O backup "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/backup.sh" && chmod +x backup
wget -q -O bckp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/bckp.sh" && chmod +x bckp
wget -q -O cek.l2tp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/cek.l2tp.sh" && chmod +x cek.l2tp
wget -q -O cek.mulog "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/cek.mulog.sh" && chmod +x cek.mulog
wget -q -O cek.pptp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/cek.pptp.sh" && chmod +x cek.pptp
wget -q -O cek.ss "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/cek.ss.sh" && chmod +x cek.ss
wget -q -O cek.ssh "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/cek.ssh.sh" && chmod +x cek.ssh
wget -q -O cek.sstp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/cek.sstp.sh" && chmod +x cek.sstp
wget -q -O cek.tr "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/cek.tr.sh" && chmod +x cek.tr
wget -q -O cek.vless "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/cek.vless.sh" && chmod +x cek.vless
wget -q -O cek.vmess "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/cek.vmess.sh" && chmod +x cek.vmess
wget -q -O cek.wg "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/cek.wg.sh" && chmod +x cek.wg
wget -q -O certv2ray "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/certv2ray.sh" && chmod +x certv2ray
wget -q -O certv2rayx "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/certv2rayx.sh" && chmod +x certv2rayx
wget -q -O change.port "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/change.port.sh" && chmod +x change.port
wget -q -O del.exp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/del.exp.sh" && chmod +x del.exp
wget -q -O del.l2tp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/del.l2tp.sh" && chmod +x del.l2tp
wget -q -O del.pptp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/del.pptp.sh" && chmod +x del.pptp
wget -q -O del.ss "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/del.ss.sh" && chmod +x del.ss
wget -q -O del.ssh "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/del.ssh.sh" && chmod +x del.ssh
wget -q -O del.ssr "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/del.ssr.sh" && chmod +x del.ssr
wget -q -O del.sstp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/del.sstp.sh" && chmod +x del.sstp
wget -q -O del.tr "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/del.tr.sh" && chmod +x del.tr
wget -q -O del.vless "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/del.vless.sh" && chmod +x del.vless
wget -q -O del.vmess "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/del.vmess.sh" && chmod +x del.vmess
wget -q -O del.wg "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/del.wg.sh" && chmod +x del.wg
wget -q -O info "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/info.sh" && chmod +x info
wget -q -O limit.speed "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/limit.speed.sh" && chmod +x limit.speed
wget -q -O list.ssh "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/list.ssh.sh" && chmod +x list.ssh
wget -q -O menu "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/menu.sh" && chmod +x menu
wget -q -O port-ovpn "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/port-ovpn.sh" && chmod +x port-ovpn
wget -q -O port-squid "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/port-squid.sh" && chmod +x port-squid
wget -q -O port-ssl "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/port-ssl.sh" && chmod +x port-ssl
wget -q -O port-sstp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/port-sstp.sh" && chmod +x port-sstp
wget -q -O port-tr "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/port-tr.sh" && chmod +x port-tr
wget -q -O port-vless "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/port-vless.sh" && chmod +x port-vless
wget -q -O port-vmess "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/port-vmess.sh" && chmod +x port-vmess
wget -q -O port-wg "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/port-wg.sh" && chmod +x port-wg
wget -q -O renew.l2tp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/renew.l2tp.sh" && chmod +x renew.l2tp
wget -q -O renew.pptp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/renew.pptp.sh" && chmod +x renew.pptp
wget -q -O renew.ss "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/renew.ss.sh" && chmod +x renew.ss
wget -q -O renew.ssh "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/renew.ssh.sh" && chmod +x renew.ssh
wget -q -O renew.ssr "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/renew.ssr.sh" && chmod +x renew.ssr
wget -q -O renew.sstp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/renew.sstp.sh" && chmod +x renew.sstp
wget -q -O renew.tr "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/renew.tr.sh" && chmod +x renew.tr
wget -q -O renew.vless "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/renew.vless.sh" && chmod +x renew.vless
wget -q -O renew.vmess "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/renew.vmess.sh" && chmod +x renew.vmess
wget -q -O renew.wg "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/renew.wg.sh" && chmod +x renew.wg
wget -q -O restart "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/restart.sh" && chmod +x restart
wget -q -O restore "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/restore.sh" && chmod +x restore
wget -q -O status "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/status.sh" && chmod +x status
wget -q -O strt "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/strt.sh" && chmod +x strt
wget -q -O swapkvm "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/swapkvm.sh" && chmod +x swapkvm
wget -q -O tendang "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/tendang.sh" && chmod +x tendang
wget -q -O trial.l2tp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/trial.l2tp.sh" && chmod +x trial.l2tp
wget -q -O trial.pptp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/trial.pptp.sh" && chmod +x trial.pptp
wget -q -O trial.ss "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/trial.ss.sh" && chmod +x trial.ss
wget -q -O trial.ssh "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/trial.ssh.sh" && chmod +x trial.ssh
wget -q -O trial.ssr "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/trial.ssr.sh" && chmod +x trial.ssr
wget -q -O trial.sstp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/trial.sstp.sh" && chmod +x trial.sstp
wget -q -O trial.tr "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/trial.tr.sh" && chmod +x trial.tr
wget -q -O trial.vless "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/trial.vless.sh" && chmod +x trial.vless
wget -q -O trial.vmess "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/trial.vmess.sh" && chmod +x trial.vmess
wget -q -O trial.wg "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/trial.wg.sh" && chmod +x trial.wg
wget -q -O ws.cdn "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/ws.cdn.sh" && chmod +x ws.cdn
wget -q -O xp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/xp.sh" && chmod +x xp
wget -q -O clear-log "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/clear-log.sh" && chmod +x clear-log
wget -q -O update.sc "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/update.sc.sh" && chmod +x update.sc
wget -q -O go "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/go.sh" && chmod +x go
cd
chmod 600 /etc/stunnel/stunnel.pem
cat<<EOF>/etc/msmtprc
defaults
tls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt

account default
host smtp.gmail.com
port 587
auth on
user backup.cemilanvpn@gmail.com
from backup.cemilanvpn@gmail.com
password cjqlukttctkqhrmf
logfile ~/.msmtp.log
EOF

go
echo "3.3" > /home/ver
fi
clear
echo -e "========================"
echo -e "  Update Complete"
echo -e "  Go to home in 5s"
echo -e "========================"
sleep 5
home
