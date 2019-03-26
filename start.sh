#!/bin/bash
ip=`curl ipecho.net/plain`
path=`pwd`
nohup ${path}/brook socks5 -l :9999 -i ${ip} >/dev/null 2>log &
nohup ${path}/brook ssserver -l :8989 -p 123456 >/dev/null 2>log &
nohup ${path}/shadowsocks-server /dev/null 2>&1 &