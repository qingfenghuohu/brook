#!/bin/bash
wget https://github.com/txthinking/brook/releases/download/v20190205/brook
wget https://raw.githubusercontent.com/qingfenghuohu/brook/master/restart.sh
wget https://raw.githubusercontent.com/qingfenghuohu/brook/master/start.sh
wget https://github.com/shadowsocks/shadowsocks-go/releases/download/1.2.1/shadowsocks-server.tar.gz
wget https://raw.githubusercontent.com/qingfenghuohu/brook/master/config.json
tar -zxvf shadowsocks-server.tar.gz
chmod +x brook restart.sh start.sh
path=`pwd`
sh ${path}/start.sh
sh ${path}/shadowsocks-server
echo "sh ${path}/start.sh" >> /etc/rc.d/rc.local