#!/bin/bash
cd /root
wget https://github.com/txthinking/brook/releases/download/v20190205/brook
wget https://raw.githubusercontent.com/qingfenghuohu/brook/master/cron.sh
wget https://raw.githubusercontent.com/qingfenghuohu/brook/master/start.sh
chmod +x brook cron.sh start.sh