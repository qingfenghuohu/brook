#!/bin/bash
cd /root
wget https://github.com/txthinking/brook/releases/download/v20190205/brook
wget https://raw.githubusercontent.com/qingfenghuohu/brook/master/restart.sh
wget https://raw.githubusercontent.com/qingfenghuohu/brook/master/start.sh
chmod +x brook restart.sh start.sh
path=`pwd`
sh ./start.sh
echo "sh ${path}/start.sh" >> /etc/rc.d/rc.local