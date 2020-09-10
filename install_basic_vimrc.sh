#!/bin/sh
set -e
set -e
# 获取当前脚本的目录
vimrc_path=$(pwd)
echo ${vimrc_path}
# 备份配置
echo "backup vimrc to ~/.vimrc"
mv ~/.vimrc ~/.vimrc_bak
# 生成vimrc配置
echo "set runtimepath+=${vimrc_path}

source ${vimrc_path}/vimrcs/basic.vim

try
source ${vimrc_path}/my_configs.vim
catch
endtry" > ~/.vimrc

echo "Installed the Basic Vim configuration successfully! Enjoy :-)"
