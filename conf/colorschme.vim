
augroup CustomColorSchemeForDarkblue
  autocmd!
  autocmd ColorScheme darkblue :hi Visual ctermbg=red ctermfg=white guibg=#592929
  autocmd ColorScheme darkblue :hi Search ctermbg=red ctermfg=white guibg=#592929
  autocmd ColorScheme darkblue :hi IncSearch ctermbg=red ctermfg=white guibg=#592929
  autocmd ColorScheme darkblue :hi StatusLine ctermfg=0 ctermbg=7 guifg=black guibg=darkgray
  "autocmd ColorScheme darkblue :hi StatusLine term=reverse cterm=bold,reverse ctermfg=7 ctermbg=1
  autocmd ColorScheme darkblue :hi ColorColumn ctermbg=lightgrey guibg=lightgrey
  autocmd ColorScheme darkblue :hi Comment term=bold cterm=bold ctermfg=6 guifg=#80a0ff
  autocmd ColorScheme darkblue :hi Constant term=underline cterm=bold ctermfg=5 guifg=#ffa0a0
  autocmd ColorScheme darkblue :hi PreProc term=underline cterm=bold ctermfg=4 guifg=#ff80ff
  autocmd ColorScheme darkblue :hi Statement term=bold cterm=bold ctermfg=3 gui=bold guifg=#ffff60
augroup END

augroup CustomColorSchemeForSolarized
  autocmd!
augroup END
