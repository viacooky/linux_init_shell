#! /bin/bash
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
wget -O /root/.zshrc https://raw.githubusercontent.com/viacooky/linux_init_shell/master/.zshrc
source /root/.zshrc

yum makecache
yum update -y
yum install -y epel-release git net-tools htop saidar docker \
cc gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite \
sqlite-devel openssl-devel zsh wget patch

git clone https://github.com/pyenv/pyenv.git /root/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> /root/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> /root/.zshrc
echo 'eval "$(pyenv init -)"' >> /root/.zshrc
source /root/.zshrc 

pyenv install 2.7.8 -v
pip install shadowsocks
pip install supervisor

mkdir /root/config
touch /root/config/ss.json
echo '{' >> ~/config/ss.json
echo '   "server":"0.0.0.0",' >> /root/config/ss.json
echo '   "server_port":8989,' >> /root/config/ss.json
echo '   "password":"ss123456",' >> /root/config/ss.json
echo '   "timeout":300, ' >> /root/config/ss.json
echo '   "method":"aes-256-cfb"' >> /root/config/ss.json
echo '}' >> /root/config/ss.json


echo_supervisord_conf > /etc/supervisord.conf
mkdir /root/config/supervisor_config
mkdir /root/config/supervisor_config/logs
echo [include] >> /etc/supervisord.conf
echo files = /root/config/supervisor_config/*.ini >> /etc/supervisord.conf
touch /root/config/supervisor_config/shadowsocks.ini
echo '[program:shadowsocks]' >> /root/config/supervisor_config/shadowsocks.ini
echo 'command=ssserver -c /root/config/ss.json  ; 需要执行的命令 wd' >> /root/config/supervisor_config/shadowsocks.ini
echo 'user =root  ;' >> /root/config/supervisor_config/shadowsocks.ini
echo 'autostart=true  ;' >> /root/config/supervisor_config/shadowsocks.ini
echo 'autorestart=true  ;' >> /root/config/supervisor_config/shadowsocks.ini
echo 'startsecs=3  ;)' >> /root/config/supervisor_config/shadowsocks.ini
echo 'stderr_logfile=/root/config/supervisor_config/logs/shadowsocks_err.log ; 错误输出重定向' >> /root/config/supervisor_config/shadowsocks.ini
echo 'stdout_logfile=None  ;log 输出' >> /root/config/supervisor_config/shadowsocks.ini
supervisord -c /etc/supervisord.conf
supervisorctl start shadowsocks
supervisorctl status

firewall-cmd --zone=public --add-port=sunwebadmins/tcp --permanent
