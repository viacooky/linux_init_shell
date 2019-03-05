#! /bin/bash

yum install -y zsh
# 替换 oh-my-zsh install.sh 中的 env zsh，实现 安装后不进入zsh，继续其他语句
sh -c "$(wget -O - https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed 's:env zsh -l::g' | sed 's:chsh -s .*$::g')"
wget -O ~/.zshrc https://github.com/viacooky/shell_script/raw/master/configs/zsh/.zshrc
source ~/.zshrc
