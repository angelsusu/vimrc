" key maps -------------------------------------------------------------------

" switch window splits 
nmap <silent> <c-h> :wincmd h<cr>
nmap <silent> <c-j> :wincmd j<cr>
nmap <silent> <c-k> :wincmd k<cr>
nmap <silent> <c-l> :wincmd l<cr>

" jump to head of line
nmap lg 0
" jump to end of line
nmap le $

nmap <leader>f :call ToggleFolding()<cr>
function! ToggleFolding()
  if foldclosed('.') == -1
    try | foldclose | endtry
  else
    try | foldopen | endtry
  endif
endfunction


" close current split pane
nmap <Leader>q :q<CR>
" save current pane
nmap <Leader>w :w<CR>
" save and quit
nmap <Leader>wq :wq<CR>
" copy to system clipboard
vnoremap <Leader>y "+y
" paste from system clipboard
nmap <Leader>p "+p
" build and link project base on make and Makefile
nmap <Leader>m :wa<CR>:make<CR>:bot cw<CR><CR>

