let mapleader=";"
" reload vimrc
nmap rl :source %<cr>

" edit vimrc
nmap <leader><leader>c :call Open_file('~/.vimrc') <cr>
" edit setting
nmap <leader><leader>s :call Open_file('~/.vim/conf/setting.vim') <cr>
" edit keymaps
nmap <leader><leader>k :call Open_file('~/.vim/conf/keymaps.vim') <cr>
" edit plugins list
nmap <leader><leader>m :call Open_file('~/.vim/conf/plugins.vim') <cr>
" edit plugin setting
nmap <leader><leader>p :call Open_file('~/.vim/conf/plugins/setting.vim') <cr>

function! Open_file(fname)
  call WinManagerFileEdit(a:fname,  1)
endfunction

" show key maps
nmap <leader>k :verbose map<cr>


runtime! conf/setting.vim
runtime! conf/plugins.vim
runtime! conf/keymaps.vim

