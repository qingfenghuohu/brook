#!/bin/bash
ps -e|grep brook | awk '{print $1}'|xargs kill -9
ps -ef|grep shadowsocks|awk '{print $2}'|xargs kill -9
ip=`curl ipecho.net/plain`
path=`pwd`
nohup ${path}/brook socks5 -l :9999 -i ${ip} >/dev/null 2>log &
nohup ${path}/brook ssserver -l :8989 -p 123456 >/dev/null 2>log &
nohup ${path}/shadowsocks-server /dev/null 2>&1 &   