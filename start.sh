#!/bin/bash
nohup /root/brook socks5 -l :9999 -i 47.75.11.103 >/dev/null 2>log &
nohup /root/brook ssserver -l :8989 -p 123456 >/dev/null 2>log &