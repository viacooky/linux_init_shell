#! /bin/bash

# 卸载安骑士
sh -c "$(wget http://update.aegis.aliyun.com/download/uninstall.sh -O -)"
sh -c "$(wget http://update.aegis.aliyun.com/download/quartz_uninstall.sh -O -)"

# 删除残余
pkill aliyun-service
rm -fr /etc/init.d/agentwatch /usr/sbin/aliyun-service
rm -rf /usr/local/aegis*

# 阻断IP
iptables -I INPUT -s 140.205.201.0/28 -j DROP
iptables -I INPUT -s 140.205.201.16/29 -j DROP
iptables -I INPUT -s 140.205.201.32/28 -j DROP
iptables -I INPUT -s 140.205.225.192/29 -j DROP
iptables -I INPUT -s 140.205.225.200/30 -j DROP
iptables -I INPUT -s 140.205.225.184/29 -j DROP
iptables -I INPUT -s 140.205.225.183/32 -j DROP
iptables -I INPUT -s 140.205.225.206/32 -j DROP
iptables -I INPUT -s 140.205.225.205/32 -j DROP
iptables -I INPUT -s 140.205.225.195/32 -j DROP
iptables -I INPUT -s 140.205.225.204/32 -j DROP