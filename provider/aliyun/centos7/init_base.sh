#! /bin/bash

# 初始化脚本
# 1. 替换yum源为阿里云
# 2. 安装必备工具包（epel-release git net-tools）
# 3. 安装zsh



echo "======================================="
echo "[CentOS初始化脚本]"
sh -c "$(wget https://github.com/viacooky/shell_script/raw/master/provider/aliyun/centos7/pack/replace_yum_repos.sh -O -)"
sh -c "$(wget https://github.com/viacooky/shell_script/raw/master/provider/aliyun/centos7/pack/install_base.sh -O -)"
sh -c "$(wget https://github.com/viacooky/shell_script/raw/master/provider/aliyun/centos7/pack/install_zsh.sh -O -)"
