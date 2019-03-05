#! /bin/bash

#aegis
sudo sh -c "$(wget http://update.aegis.aliyun.com/download/quartz_uninstall.sh -O -)"
rm -rf /usr/local/aegis*

# agentwatch
systemctl stop agentwatch.service
systemctl disable agentwatch.service
rm -rf /run/systemd/generator.late/agentwatch.service
rm -rf /etc/rc.d/init.d/agentwatch*

# aliyun.service
systemctl stop aliyun.service
systemctl disable aliyun.service
rm -rf /etc/systemd/system/aliyun.service
rm -rf /usr/sbin/aliyun*
rm -rf /usr/local/share/aliyun*


# cloudmonitor
/usr/local/cloudmonitor/wrapper/bin/cloudmonitor.sh stop | /usr/local/cloudmonitor/wrapper/bin/cloudmonitor.sh remove
rm -rf /run/systemd/generator.late/cloudmonitor.service
rm -rf /usr/local/cloudmonitor


find /etc/rc.d/ -name "*agentwatch" -print0 | xargs -0 rm -rf
find /etc/rc.d/ -name "*aegis" -print0 | xargs -0 rm -rf

# pip uninstall cloud-init -y