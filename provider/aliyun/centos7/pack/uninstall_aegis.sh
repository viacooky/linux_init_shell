#! /bin/bash

sh -c "$(wget http://update.aegis.aliyun.com/download/uninstall.sh -O -)"
sh -c "$(wget http://update.aegis.aliyun.com/download/quartz_uninstall.sh -O -)"

pkill aliyun-service
rm -fr /etc/init.d/agentwatch /usr/sbin/aliyun-service
rm -rf /usr/local/aegis*