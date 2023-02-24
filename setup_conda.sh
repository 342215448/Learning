#!/bin/bash

# 创建download目录用于存储下载内容
mkdir download

# 设置 Anaconda3 安装目录和版本
ANACONDA_INSTALL_DIR=~/anaconda3
ANACONDA_VERSION=2021.11

# 下载 Anaconda3 安装脚本
wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive/Anaconda3-2020.11-Linux-x86_64.sh --no-check-certificate -O ~/download/anaconda3.sh

# 安装 Anaconda3
bash ~/download/anaconda3.sh -b -p $ANACONDA_INSTALL_DIR

echo 'the installation is completed...'
# 添加 Anaconda3 环境变量
echo 'export PATH=~/anaconda3/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
echo 'the bashrc has been completed...'

# 更换清华源
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --set show_channel_urls yes
echo 'the channels of condo have been completed...'

# 更换 pip 源
mkdir -p /home/fengpeinan/.pip
echo '[global]' >> /home/fengpeinan/.pip/pip.conf
echo 'index-url = https://pypi.tuna.tsinghua.edu.cn/simple' >> /home/fengpeinan/.pip/pip.conf
Echo 'the channels of pip have been completed...'
