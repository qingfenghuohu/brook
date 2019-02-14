#!/bin/bash
ps -e|grep brook | awk '{print $1}'|xargs kill -9
nohup /root/brook socks5 -l :9999 -i 119.28.156.227 >/dev/null 2>log &
nohup /root/brook socks5tohttp -l 127.0.0.1:9998 -s 127.0.0.1:9999 >/dev/null 2>log &