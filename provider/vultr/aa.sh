#!/bin/bash

echo "
Aliyun CentOS 7 初始化脚本

即将执行如下操作：
    1. 替换yum源为阿里云
    2. 安装必备工具包（epel-release git net-tools）
    3. 安装zsh
    4. 清理AliYun国内版后台服务
"

read -r -p "是否执行? [Y/n] " input

case $input in
    [yY][eE][sS]|[yY])
        echo "================== [ CentOS初始化脚本 ] ====================="
    ;;

    [nN][oO]|[nN])
        echo "No"
        exit 0
    ;;

    *)
    echo "错误输入..."
    exit 1
    ;;
esac