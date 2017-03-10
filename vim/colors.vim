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
" color mango

" set up some custom colors
highlight VertSplit    ctermbg=232 ctermfg=235
" highlight StatusLineNC ctermbg=238 ctermfg=0
" highlight StatusLine   ctermbg=240 ctermfg=12
highlight MatchParen ctermfg=208  ctermbg=235 cterm=bold

" Show syntastic warnings column
" highlight SpellCap term=undercurl cterm=undercurl ctermfg=88 ctermbg=232
" highlight SpellBad term=undercurl cterm=undercurl ctermfg=88 ctermbg=232
" highlight SpellBad     ctermbg=0   ctermfg=1
" highlight SpellRare term=undercurl cterm=undercurl
" highlight SpellLocal term=undercurl cterm=undercurl

" highlight Cursor guifg=green guibg=red
set cursorline
hi clear CursorLine
highlight CursorLine term=bold cterm=bold ctermbg=235
highlight CursorLineNr term=bold cterm=bold ctermbg=235 ctermfg=86
" highlight Search ctermfg=51 ctermbg=238 cterm=underline
" highlight SyntasticError cterm=underline ctermbg=232 ctermfg=203
" highlight SyntasticWarning cterm=underline ctermbg=232 ctermfg=203


hi NeomakeWarning guifg=#ec5f67 ctermfg=203 gui=undercurl cterm=undercurl


hi MyWarningMsg ctermbg=3 ctermfg=0
" let g:neomake_error_highlight = 'SyntasticError'

let g:neomake_error_highlight = {
            \ 'texthl': 'MyWarningMsg',
            \ }

let g:neomake_error_sign = {
            \ 'text': '>>',
            \ 'texthl': 'ErrorMsg',
            \ }
let g:neomake_warning_sign = {
            \ 'text': '>>',
            \ 'texthl': 'MyWarningMsg',
            \ }

" augroup my_neomake_highlights
"   au!
"   autocmd ColorScheme *
"     \ hi link NeomakeError cterm=undercurl ctermbg=200 ctermfg=145
"     \ hi link NeomakeWarning ceterm=undercurl ctermbg=200 ctermfg=145
" augroup END
"

" a little more informative version of the above

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
