dir=$(cd `dirname $0`;pwd)
home=$(cd;pwd)
# init vimrc if not exist
if [ ! -f "$dir/vimrc" ];then
    touch "vimrc"
fi

# link vimrc to ~/.vimrc
ln -sf "$dir/vimrc" ~/.vimrc

# clear old ~/.vim if exist or create it
if [ -d "$home/.vim" ];then
    rm -rf "$home/.vim/*"
else
    mkdir "$home/.vim"
fi

# link conf to ~/.vim/conf
ln -sf "$dir/conf" ~/.vim/

# git not found waring
if [ ! -n `which git` ];then
    echo "git not fond, install git first please."
    exit
fi

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git $home/.vim/bundle/Vundle.vim

# install plugins
vim +PluginInstall +qall

# every thing done
echo ""
echo "Everything done, ^-^.";
