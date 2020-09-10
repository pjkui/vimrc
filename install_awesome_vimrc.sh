#!/bin/sh
# set -x
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
source ${vimrc_path}/vimrcs/filetypes.vim
source ${vimrc_path}/vimrcs/plugins_config.vim
source ${vimrc_path}/vimrcs/extended.vim

try
source ${vimrc_path}/my_configs.vim
catch
endtry" > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
