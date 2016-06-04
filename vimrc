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

" Column 80 marker
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

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

" vundle manage plugins --------------------------------------------------
filetype  off     "required 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'              " file tree
Plugin 'tomtom/checksyntax_vim'           " check file syntax
Plugin 'taglist.vim'                      
Plugin 'grep.vim'                         " search keyword tool
Plugin 'a.vim'                            " toggle .c(c) and .h
Plugin 'DoxygenToolkit.vim'               " comment document
Plugin 'fholgado/minibufexpl.vim'         " buffer navigator
Plugin 'anscoral/winmanager.vim'          " window manager
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

" nerdtree -------------------------------------------------------------------
nmap <Leader>fl :NERDTreeToggle<CR>
"Open NERDTree when vim starts up
autocmd vimenter * NERDTree
"Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeWinSize = 30

"checksyntax  need install checker by you self -------------------------------
"
" taglist --------------------------------------------------------------------
nmap tl :TlistToggle<CR>
set tags=./tags
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1            " exit vim when tlist window is the last one
let Tlist_Show_One_File = 1              " only show current file's taglists
let Tlist_GainFocus_On_ToggleOpen = 0    " foucs on show taglist window
let Tlist_php_settings = 'php;c:class;f:function;d:constant'
let Tlist_File_Fold_Auto_Close = 1
let Tlist_WinWidth = 30
let Tlist_Auto_Open = 1


" grep -----------------------------------------------------------------------
nnoremap fa :Grep<CR>                    " find in project

" a --------------------------------------------------------------------------
nmap cd :A<CR>                           " toggle header and cpp file

" Doxygen Toolkit ------------------------------------------------------------
nmap cm :Dox<CR>
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_authorName="Qiankun Gao"
let g:doxygen_enhanced_color=1

" minibufferexplorer ---------------------------------------------------------
:nmap tm :MBEToggle<CR>:MBEFocus<CR>
noremap <silent> tt :MBEbb<CR>
noremap <silent> ft :MBEbf<CR>
noremap <silent> dt :MBEbd<CR>
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:bufExplorerMaxHeight=30
let g:miniBufExplorerMoreThanOne=0

" make cursor back to position before close 
if has("autocmd")
 autocmd BufReadPost *
 \ if line("'\"") > 0 && line ("'\"") <= line("$") |
 \ exe "normal g'\"" |
\ endif
endif

" winmanager -----------------------------------------------------------------
let g:NERDTree_title='[NERD Tree]'
let g:AutoOpenWinManager= 1
let g:winManagerWindowLayout='NERDTree'
"let g:winManagerWindowLayout='NERDTree|TagList'
let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap wm :WMToggle<CR>
function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

" supertab -------------------------------------------------------------------
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

" indent guides --------------------------------------------------------------
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
:nmap <silent> <Leader>ig <Plug>IndentGuidesToggle
:nmap <silent> <Leader>ie <Plug>IndentGuidesEnable
:nmap <silent> <Leader>id <Plug>IndentGuidesDisable

" clang format ---------------------------------------------------------------
" Toggle auto formatting:
nmap tc :ClangFormatAutoToggle<CR>
let g:clang_format#style_options = {
  \ "AccessModifierOffset" : -1,
  \ "AllowShortIfStatementsOnASingleLine" : "true",
  \ "AlwaysBreakTemplateDeclarations" : "true",
  \ "AlignTrailingComments" : "false",
  \ "Standard" : "C++11",
  \ "AlignConsecutiveAssignments" : "true"
  \}
" map to cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer>cf :ClangFormat<CR>
autocmd FileType c,cpp,objc ClangFormatAutoDisable  "disable auto format on save

" youcomeleteme --------------------------------------------------------------
nnoremap td :YcmCompleter GoToDefinition<CR> 
nnoremap tr :YcmCompleter GoToDeclaration<CR>
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
set completeopt=longest,menu
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_max_diagnostics_to_display = 0         "disable error warnings and highlight

" git guntter ----------------------------------------------------------------
nmap tg :GitGutterToggle<CR> 
let g:GitGutterLineHighlightsEnable = 1
nmap ]g :GitGutterNextHunk<CR>
nmap [g :GitGutterPrevHunk<CR>

" airline status bar ---------------------------------------------------------
set t_Co=256
let g:airline_powerline_fonts = 1
"let g:airline_theme="luna"

" solarized ------------------------------------------------------------------
let g:solarized_termcolors=256
colorscheme solarized
if has('gui_running')
  set background=light
else
  set background=dark
endif
" key maps -------------------------------------------------------------------

" reload vimrc
nmap rl :source %<CR>

" jump to head of line
nmap lg 0
" jump to end of line
nmap le $
" close current split pane
nmap <Leader>q :q<CR>
" save current pane
nmap <Leader>w :w<CR>
" copy to system clipboard
vnoremap <Leader>y "+y
" paste from system clipboard
nmap <Leader>p "+p
" build and link project base on make and Makefile
nmap <Leader>m :wa<CR>:make<CR>:bot cw<CR><CR>


