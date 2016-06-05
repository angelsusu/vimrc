" winmanager -----------------------------------------------------------------
let g:winManagerWindowLayout='NERDTree|'
let g:winManagerWidth = 30
let g:defaultExplorer = 0
" there is a bug when exec WMToggle, two blank split pane will be opened
nnoremap <silent> wm :call WM_init()<cr>
" open winmanager if no file opened when vim start
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | call WM_init() | endif

function! WM_init()
  if IsWinManagerVisible() | exec "WMToggle" | return | endif
  exec "WMToggle" | q | exec "FirstExplorerWindow"
endfunction  

" nerdtree -------------------------------------------------------------------
let g:NERDTree_title='[NERD Tree]'
"Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeAutoDeleteBuffer = 1

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

" nerdtree git plugin --------------------------------------------------------
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"checksyntax  need install checker by you self -------------------------------
"
" taglist --------------------------------------------------------------------
nmap tl :TlistToggle<cr>
set tags=./tags
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1            " exit vim when tlist window is the last one
let Tlist_Show_One_File = 1              " only show current file's taglists
let Tlist_GainFocus_On_ToggleOpen = 1    " foucs on show taglist window
let Tlist_php_settings = 'php;c:class;f:function;d:constant'
let Tlist_File_Fold_Auto_Close = 1
let Tlist_WinWidth = 30
let Tlist_Auto_Open = 0


" ctrlp ----------------------------------------------------------------------
let g:ctrlp_map = '<leader>ff'
let g:ctrlp_cmd = 'CtrlP'
map <C-p> :CtrlPMRU<cr>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=30
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

" ctrlsf ----------------------------------------------------------------------
nnoremap <leader>fa :CtrlSF<space> 
nnoremap <leader>fq :CtrlSFQuickfix<space> 
let g:ctrlsf_position = 'bottom'
let g:ctrlsf_auto_close = 1
let g:ctrlsf_default_root = 'project'
let g:ctrlsf_ignore_dir = ['.git', '.hg', '.svn', '.rvm']

" a --------------------------------------------------------------------------
nmap <leader>cd :A<cr>                           " toggle header and cpp file

" Doxygen Toolkit ------------------------------------------------------------
nmap cm :Dox<cr>
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_authorName="Qiankun Gao"
let g:doxygen_enhanced_color=1

" minibufferexplorer ---------------------------------------------------------
:nmap <leader>tm :MBEToggle<cr>:MBEFocus<cr>
noremap <silent> <leader>tt :MBEbb<cr>
noremap <silent> <leader>ft :MBEbf<cr>
noremap <silent> <leader>dt :MBEbd<cr>
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:bufExplorerMaxHeight=30
let g:miniBufExplorerMoreThanOne=2

" make cursor back to position before close 
if has("autocmd")
 autocmd BufReadPost *
 \ if line("'\"") > 0 && line ("'\"") <= line("$") |
 \ exe "normal g'\"" |
\ endif
endif

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
nmap <leader>tc :ClangFormatAutoToggle<cr>
let g:clang_format#style_options = {
  \ "AccessModifierOffset" : -1,
  \ "AllowShortIfStatementsOnASingleLine" : "true",
  \ "AlwaysBreakTemplateDeclarations" : "true",
  \ "AlignTrailingComments" : "false",
  \ "Standard" : "C++11",
  \ "AlignConsecutiveAssignments" : "true"
  \}
" map to cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer> <leader>cf :<C-u>ClangFormat<cr>
autocmd FileType c,cpp,objc vnoremap <buffer> <leader>cf :ClangFormat<cr>
autocmd FileType c,cpp,objc ClangFormatAutoEnable  "disable auto format on save

" youcomeleteme --------------------------------------------------------------
nnoremap <leader>td :YcmCompleter GoToDefinition<cr> 
nnoremap <leader>tr :YcmCompleter GoToDeclaration<cr>
let g:ycm_global_ycm_extra_conf = 
  \ '~/.vim/bundle/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
set completeopt=longest,menu
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_max_diagnostics_to_display = 0         "disable error warnings and highlight

" git guntter ----------------------------------------------------------------
nmap <leader>tg :GitGutterToggle<cr> 
let g:GitGutterLineHighlightsEnable = 1
nmap <leader>]g :GitGutterNextHunk<cr>
nmap <leader>[g :GitGutterPrevHunk<cr>

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
