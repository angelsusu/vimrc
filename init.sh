dir=$(cd `dirname $0`;pwd)
home=$(cd;pwd)
# 先检测本目录下是否存在vimrc文件 不存在创建一个
if [ ! -f "$dir/vimrc" ];then
    touch "vimrc"
fi
# 再检测一下home目录是否已经存在.vimrc文件 存在先删除
if [ -f "$home/.vimrc" ];then
    rm "$home/.vimrc"
fi
# 软链接home目录的.vimrc 到 本目录下的vimrc文件
ln -s "$dir/vimrc" ~/.vimrc

# 如果home目录已经存在 .vim目录 先删除
if [ -d "$home/.vim/bundle/Vundle.vim " ];then
    rm -rf "$home/.vim/bundle/Vundle.vim"
fi

# 检测是否已经安装git 未安装应该提示安装git后手动安装vundle
if [ ! -n `which git` ];then
    echo "未安装git,请安装git后手动执行: "
    echo "  git clone https://github.com/VundleVim/Vundle.vim.git $home/.vim/bundle/Vundle.vim"
    exit
fi

# 安装vundle
git clone https://github.com/VundleVim/Vundle.vim.git $home/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
echo ""
echo "Everything done, enjoy Vim Vundle, ^-^.";
