
augroup CustomColorScheme
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
