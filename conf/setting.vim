" settings -------------------------------------------------------------
set nocompatible  " be iMproved, required
" indent 1tab=2space
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
" hightlight current line
set cursorline
" show tab in a visiable mode
"set list
"set listchars=tab:>-,trail:-

" break line style
set ff=unix

" encoding
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" show wild menu when use autocomplete
set wildmenu

" show status toolbar always
set laststatus=2

set backspace=indent,eol,start

" line number and ruler
set nu
set ruler
set rulerformat=%15(%c%V\ %p%%%)


" Yanks go on clipboard instead.
set clipboard+=unnamed

" enable syntax highlight ---------------------------------------------
syntax enable
" enable specify syntax highlight style override default style
syntax on

" fold code by indent/syntax -------------------------------------------
set foldmethod=indent
" no fold on default  use za(toggle) zM(fold) zR(open)
set nofoldenable

" bells ---------------------------------------------------------------
set noerrorbells
set novisualbell
set t_vb= "close visual bell

" Search ----------------------------------------------------------------
set hlsearch  " Highlight search things
set magic     " Set magic on, for regular expressions
set showmatch " Show matching bracets when text indicator is over them
set mat=2     " How many tenths of a second to blink
set incsearch
set ignorecase

filetype plugin on

" Column 80 marker
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

match Error /\%81v.\+/
set colorcolumn=81

" EOL space
autocmd FileType c,cpp,h,cc autocmd BufWritePre <buffer> :%s/\s\+$//e

" Visual Mode Selected Color 
augroup ColorForVisual
  autocmd!
  autocmd ColorScheme * :hi Visual ctermbg=red ctermfg=white guibg=#592929
  autocmd ColorScheme * :hi Search ctermbg=red ctermfg=white guibg=#592929
  autocmd ColorScheme * :hi IncSearch ctermbg=red ctermfg=white guibg=#592929
  autocmd ColorScheme * :hi ColorColumn ctermbg=red ctermfg=white guibg=#592929
  autocmd ColorScheme * :hi Comment term=bold cterm=bold ctermfg=6 guifg=#80a0ff
  autocmd ColorScheme * :hi Constant term=underline cterm=bold ctermfg=5 guifg=#ffa0a0
  autocmd ColorScheme * :hi PreProc term=underline cterm=bold ctermfg=4 guifg=#ff80ff
  autocmd ColorScheme * :hi Statement term=bold cterm=bold ctermfg=3 gui=bold guifg=#ffff60
  autocmd ColorScheme * :hi ErrorMsg term=reverse cterm=reverse ctermfg=124 guifg=White guibg=Red
augroup END
