# 常用脚本集合

## Aliyun

### 阿里云 CentOS7 初始化

    * 替换yum源为阿里云
    * 安装必备工具包 (epel-release git net-tools)
    * 清理AliYun国内版后台服务(需要重启) from [AliYunServicesClear](https://github.com/FanhuaCloud/AliYunServicesClear)
    * 安装zsh

`sh -c "$(wget https://git.io/aliyun_centos_init.sh -O -)"`

OR

`sh -c "$(wget https://github.com/viacooky/shell_script/raw/master/provider/aliyun/centos7/init_base.sh -O -)"`

### 阿里云 CentOS7 初始化 + Docker

    * 替换yum源为阿里云
    * 安装必备工具包 (epel-release git net-tools)
    * 清理AliYun国内版后台服务(需要重启) from [AliYunServicesClear](https://github.com/FanhuaCloud/AliYunServicesClear)
    * 安装zsh
    * 安装docker，并开机启动 (docker docker-compose)

`sh -c "$(wget https://git.io/aliyun_centos7_init_docker.sh -O -)"`

OR

`sh -c "$(wget https://github.com/viacooky/shell_script/raw/master/provider/aliyun/centos7/init_docker.sh -O -)"`

---

## Changes

### 2019-03-05

- 初始化 CentOS7
  - 替换 yum 源为阿里云
  - 安装必备工具包 (epel-release git net-tools)
  - 清理 AliYun 国内版后台服务(需要重启)
  - 安装 zsh
- 初始化 CentOS7 并安装 Docker
  - 替换 yum 源为阿里云
  - 安装必备工具包(epel-release git net-tools)
  - 清理 AliYun 国内版后台服务(需要重启)
  - 安装 zsh
  - 安装 docker，并开机启动(docker docker-compose)
