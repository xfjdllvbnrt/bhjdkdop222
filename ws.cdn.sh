cat >/etc/systemd/system/proxynode.service <<-END
[Unit]
Description=Proxy Node js
Documentation=https://t.me/mawarx86
After=network.target nss-lookup.target

[Service]
User=nobody
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=node /usr/bin/proxy3.js -dhost 127.0.0.1 -dport 143 -mport 2082
Restart=on-failure
RestartPreventExitStatus=1

[Install]
WantedBy=multi-user.target
END