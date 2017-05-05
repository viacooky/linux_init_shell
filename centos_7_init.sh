#! /bin/bash

# 添加net-tools
cp /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak
yum install -y wget
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
yum clean all
yum makecache
yum update -y
yum install -y epel-release git net-tools zsh htop saidar
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
wget -O ~/.zshrc https://raw.githubusercontent.com/viacooky/linux_init_shell/master/.zshrc
source ~/.zshrc

echo CentOS7 initialize Done
