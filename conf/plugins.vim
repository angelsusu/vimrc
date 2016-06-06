" vundle manage plugins --------------------------------------------------
filetype  off     "required 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'winmanager'                       " winmanager
Plugin 'scrooloose/nerdtree'              " file tree
Plugin 'xuyuanp/nerdtree-git-plugin'      " nerd tree show git status flags
Plugin 'tomtom/checksyntax_vim'           " check file syntax
Plugin 'taglist.vim'                      
Plugin 'ctrlpvim/ctrlp.vim'               " search file
Plugin 'dyng/ctrlsf.vim'                  " search keyworld in files
Plugin 'a.vim'                            " toggle .c(c) and .h
Plugin 'DoxygenToolkit.vim'               " comment as document
Plugin 'scrooloose/nerdcommenter'         " comment tool
Plugin 'fholgado/minibufexpl.vim'         " buffer navigator
Plugin 'ervandew/supertab'                " Perform insert mode completions with Tab
Plugin 'nathanaelkane/vim-indent-guides'  " make indent  visiablity
Plugin 'rhysd/vim-clang-format'           " format code style
Plugin 'valloric/youcompleteme'           " complete 
Plugin 'kshenoy/vim-signature'            " toggle, display and navigate marks
Plugin 'airblade/vim-gitgutter'           " show git diff  flag on guntter
Plugin 'powerline/fonts'                  " powerline fonts
Plugin 'vim-airline/vim-airline'          " a cool menu bar
Plugin 'vim-airline/vim-airline-themes'   " themes for airline menu bar
Plugin 'altercation/vim-colors-solarized' " color scheme themes

call vundle#end()           " required
filetype plugin indent on   " required

runtime! conf/plugins/setting.vim

