#!/usr/bin/bash

git config --global user.name "[user-name]"
git config --global user.email "[user-email]"

git clone https://github.com/Ryuku-Hisa/vimrc.git 
cp vimrc/vimrc ~/.vimrc
rm -r vimrc

mkdir ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/.vim
mkdir colors
git clone https://github.com/tomasr/molokai
mv molokai/colors/molokai.vim ~/.vim/colors/

sed -e 's/# set bell-style none/set bell-style none/g' /etc/inputrc > /etc/inputrc_tmp
mv /etc/inputrc_tmp /etc/inputrc

echo "export LANG=C.UTF-8" >> ~/.bashrc
echo "export LANGUAGE=en_US:" >> ~/.bashrc

cd -
exec bash
