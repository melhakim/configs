#/bin/bash
mkdir -p ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget "https://raw.githubusercontent.com/melhakim/configs/master/vimrc-clean" -O ~/.vimrc 
vim +PlugInstall +qall
sed -i 's/\r$//' ~/.vim/plugged/Improved-paragraph-motion/plugin/ipmotion.vim
