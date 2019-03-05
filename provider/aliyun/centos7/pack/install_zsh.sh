#! /bin/bash

yum install -y zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
wget -O ~/.zshrc https://github.com/viacooky/shell_script/raw/master/configs/zsh/.zshrc
source ~/.zshrc