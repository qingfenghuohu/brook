#!/bin/bash
ps -e|grep brook | awk '{print $1}'|xargs kill -9
ip=`curl ipecho.net/plain`
nohup ./brook socks5 -l :9999 -i ${ip} >/dev/null 2>log &
nohup ./brook ssserver -l :8989 -p 123456 >/dev/null 2>log &