#!/bin/bash

echo "
Aliyun CentOS 7 初始化脚本

即将执行如下操作：
    * 替换yum源为阿里云
    * 安装必备工具包(epel-release git net-tools)
    * 清理AliYun国内版后台服务(需要重启)
    * 安装zsh
"

read -r -p "是否执行? [Y/n] " input

case $input in
    [yY][eE][sS]|[yY])

        echo "================== [ 替换yum源为阿里云源 ] ====================="
        sh -c "$(wget https://github.com/viacooky/shell_script/raw/master/provider/aliyun/centos7/pack/replace_yum_repos.sh -O -)"

        echo "================== [ 安装基础包 ] ====================="
        sh -c "$(wget https://github.com/viacooky/shell_script/raw/master/provider/aliyun/centos7/pack/install_base.sh -O -)"

        echo "================== [ 安装 on-my-zsh ] ====================="
        sh -c "$(wget https://github.com/viacooky/shell_script/raw/master/provider/aliyun/centos7/pack/install_zsh.sh -O -)"
        

        echo "================== [ 清理AliYun国内版后台服务 ] ====================="
        # 脚本来自 https://github.com/FanhuaCloud/AliYunServicesClear"
        sh -c "$(wget https://raw.githubusercontent.com/FanhuaCloud/AliYunServicesClear/master/uninstall.sh -O -)"

        echo "================== [ 安装 docker ] ====================="
        sh -c "$(wget https://github.com/viacooky/shell_script/raw/master/provider/aliyun/centos7/pack/install_docker.sh -O -)"

        echo "================== [ 完成 ] ====================="
        echo "请手工重启..."
    ;;

    [nN][oO]|[nN])
        exit 0
    ;;

    *)
    echo "错误输入..."
    exit 1
    ;;
esac