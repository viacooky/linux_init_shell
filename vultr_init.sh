#! /bin/bash
yum clean all
yum makecache
yum update -y
yum install -y epel-release git net-tools htop saidar docker \
cc gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite \
sqlite-devel openssl-devel zsh wget

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
wget -O ~/.zshrc https://raw.githubusercontent.com/viacooky/linux_init_shell/master/.zshrc
source ~/.zshrc
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
source ~/.zshrc 

pyenv install 2.7.8 -v

