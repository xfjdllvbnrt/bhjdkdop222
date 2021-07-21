#!/bin/bash
curl https://rclone.org/install.sh | bash
printf "q\n" | rclone config
wget -q -O /root/.config/rclone/rclone.conf "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/rclone.conf"
git clone  https://github.com/magnific0/wondershaper.git
cd wondershaper
make install
cd
rm -rf wondershaper
echo > /home/limit
apt install msmtp-mta ca-certificates bsd-mailx -y
cat<<EOF>>/etc/msmtprc
defaults
tls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt

account default
host smtp.gmail.com
port 587
auth on
user backup.cemilanvpn@gmail.com
from backup.cemilanvpn@gmail.com
password nkujxqwruppbakbn
logfile ~/.msmtp.log
EOF
chown -R www-data:www-data /etc/msmtprc
cd /usr/bin
wget -q -O autobackup "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/autobackup.sh"
wget -q -O backup "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/backup.sh"
wget -q -O bckp "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/bckp.sh"
wget -q -O restore "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/restore.sh"
wget -q -O strt "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/strt.sh"
wget -q -O limit.speed "https://raw.githubusercontent.com/xfjdllvbnrt/bhjdkdop222/main/limit.speed.sh"
chmod +x autobackup
chmod +x backup
chmod +x bckp
chmod +x restore
chmod +x strt
chmod +x limit.speed
cd
rm -f /root/set-br.sh



