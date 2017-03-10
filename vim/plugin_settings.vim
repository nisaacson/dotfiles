"""""""""""""""""
" Deoplete settings
"""""""""""""""""
let g:deoplete#enable_at_startup = 1
"
"""""""""""""""""
" NERDTRee settings
"""""""""""""""""
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store$']
"
" """""""""""""""""
" " Markdown Settings
" """""""""""""""""
" let g:markdown_fenced_languages = ['bash=sh', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'sh', 'xml']
"
" """""""""""""""""
" " Neomake Settings
" """""""""""""""""
" " let g:neomake_javascript_standard_maker = {
" "     \ 'args': ['--verbose'],
" "     \ 'errorformat': '  %f:%l:%c: %m'
" "     \ }
" let g:neomake_lua_enabled_makers = ['luacheck']
let g:neomake_javascript_enabled_makers = ['standard']
let g:neomake_jsx_enabled_makers = ['standard']
let g:neomake_open_list = 2
autocmd! BufWritePost * Neomake

"
" let g:airline_powerline_fonts = 1
"
" """""""""""""""""
" " Ctrl-P settings
" """""""""""""""""
" " let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
let g:ctrlp_map = '<C-p>'
let g:ctrlp_follow_symlinks=1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|**/components/' " ignored paths for ctrl-p bundle
" let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir', 'tmux']
let g:ctrlp_cmd = 'CtrlPBuffer'
"
" " CtrlP auto cache clearing.
" " ----------------------------------------------------------------------------
" " function! SetupCtrlP()
" "   if exists("g:loaded_ctrlp") && g:loaded_ctrlp
" "     augroup CtrlPExtension
" "       autocmd!
" "       autocmd FocusGained  * CtrlPClearCache
" "       autocmd BufWritePost * CtrlPClearCache
" "     augroup END
" "   endif
" " endfunction
" " if has("autocmd")
" "   autocmd VimEnter * :call SetupCtrlP()
" " endif
"
" " Delimate configuration
" "Return TRUE if in the middle of {} or () in INSERT mode
" function! BreakLine()
"   if (mode() == 'i')
"     return ((getline(".")[col(".")-2] == '{' && getline(".")[col(".")-1] == '}') ||
"           \(getline(".")[col(".")-2] == '(' && getline(".")[col(".")-1] == ')'))
"   else
"     return 0
"   endif
" endfun

let g:webdevicons_enable_ctrlp = 1
"
" " Gitgutter
" let g:gitgutter_realtime = 0
" let g:gitgutter_eager = 0
" let g:gitgutter_sign_column_always = 1
"
" " Remap <Enter> to split the line and insert a new line in between if
" " BreakLine return True
" inoremap <expr> <CR> BreakLine() ? "<CR><ESC>O" : "<CR>"
"
" set foldmethod=indent
"
" " Disable all of the default mappings
" let g:tcommentMapLeader1   = ""
" let g:tcommentMapLeader2   = ""
" let g:tcommentMapLeaderOp1 = ""
" let g:tcommentMapLeaderOp2 = ""
" " Create the only ones that matters
" noremap <silent> <Leader>c :TComment<cr>
"
" autocmd BufRead,BufNewFile *Dockerfile setfiletype Dockerfile
"
" let g:toggle_list_no_mappings = 0
" let g:strip_trailing_lines = 1
"
" " vim-better-whitespace
let strip_whitespace_on_save = 1

let g:hardtime_default_on = 1

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['jsx'] = 'ƛ'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:LookOfDisapprovalTabTreshold=5
let g:LookOfDisapprovalSpaceTreshold=(&tabstop*5)
