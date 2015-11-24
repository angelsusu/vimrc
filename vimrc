set nocompatible  " be iMproved, required

" indent 1tab=4space
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
" hightlight current line
set cursorline
" show tab in a visiable mode
"set list
"set listchars=tab:>-,trail:-

" break line style
set ff=unix

" encoding
set encoding=utf-8

" show wild menu when use autocomplete
set wildmenu

" show status toolbar always
set laststatus=2
set nu


" Column 80 marker
highlight OverLength ctermbg=red ctermfg=white guibg=#660000
match OverLength /\%81v.\+/

" Yanks go on clipboard instead.
set clipboard+=unnamed

" 开启语法高亮
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" fold code by indent/syntax
set foldmethod=indent
" no fold on default  use za(toggle) zM(fold) zR(open)
set nofoldenable

" vundle manage plugins
filetype  off     "required 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'benjaminwhite/Benokai'
Plugin 'editorconfig/editorconfig-vim'
"Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'powerline/fonts'
Plugin 'moll/vim-node'
Plugin 'kchmck/vim-coffee-script'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kshenoy/vim-signature'
Plugin 'scrooloose/nerdtree'

"Plugin 'bling/vim-airline'

call vundle#end() " required
filetype plugin indent on  " required

" theme benokai(a more butiful monokai) 

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
:nmap <silent> <Leader>ig <Plug>IndentGuidesToggle
:nmap <silent> <Leader>ie <Plug>IndentGuidesEnable
:nmap <silent> <Leader>id <Plug>IndentGuidesDisable

colorscheme Benokai
set t_Co=256

"Open NERDTree when vim starts up
autocmd vimenter * NERDTree

"Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <F2> :NERDTreeToggle<CR>























