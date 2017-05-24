#! /bin/bash

cp /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak
yum install -y wget
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
yum clean all
yum makecache
yum update -y
yum install -y epel-release git net-tools htop saidar docker
# 
yum install -y zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"



yum install -y python-pip
rm -rf /root/.pip
mkdir /root/.pip
touch /root/.pip/pip.conf
echo [global] >> /root/.pip/pip.conf
echo index-url=http://mirrors.aliyun.com/pypi/simple/ >> /root/.pip/pip.conf
echo trusted-host=mirrors.aliyun.com >> /root/.pip/pip.conf
pip -V

