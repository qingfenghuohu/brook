#!/bin/bash
ip=`curl ipecho.net/plain`
nohup /root/brook socks5 -l :9999 -i ${ip} >/dev/null 2>log &
nohup /root/brook ssserver -l :8989 -p 123456 >/dev/null 2>log &