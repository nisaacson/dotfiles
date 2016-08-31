"""""""""""""""""""
" Colors and user interface
"""""""""""""""""""

" in Terminal on the Mac, change insert mode cursor to a pipe
if &term =~ "xterm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif



" setdark ll only forward escape sequences to the terminal if surrounded by a
" DCS sequence
"
" http://sourceforge.net/mailarchive/forum.php?thread_name=AANLkTinkbdoZ8eNR1X2UobLTeww1jFrvfJxTMfKSq-L%2B%40mail.gmail.com&forum_name=tmux-users
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
endif

" background and color scheme
set background=dark
"color mango

" set up some custom colors
highlight VertSplit    ctermbg=232 ctermfg=235
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight MatchParen cterm=bold ctermfg=cyan ctermbg=black

" Show syntastic warnings column
highlight SpellCap term=undercurl cterm=undercurl ctermfg=88 ctermbg=232
highlight SpellRare term=undercurl cterm=undercurl

highlight SpellLocal term=undercurl cterm=undercurl

highlight Cursor guifg=green guibg=red
set cursorline
hi clear CursorLine
highlight CursorLine term=bold cterm=bold ctermbg=235
highlight CursorLineNr term=bold cterm=bold ctermbg=235 ctermfg=86
highlight Search ctermfg=51 ctermbg=238 cterm=underline

highlight SyntasticError cterm=underline ctermbg=232 ctermfg=203
highlight SyntasticWarning cterm=underline ctermbg=232 ctermfg=203
