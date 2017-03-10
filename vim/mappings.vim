"""""""""""""""""
" Vim Keybindings
"""""""""""""""""

let mapleader = "\<Space>"  " use Spacebar as leader key

"also use backslash as leader key
nmap \ "\<Space>"
nnoremap <C-C> <Esc>        " remap Ctrl-C to escape key
map <Leader> <Plug>(easymotion-prefix)

" allows moving between split windows much faster and more intuitive
" map <C-up>    <C-W><up>
" map <C-down>  <C-W><down>
" map <C-left>  <C-W><left>
" map <C-right> <C-W><right>

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-i> :TmuxNavigatePrevious<cr>

" select last paste in visual mode
nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'

" map <C-J> <C-W>j
" map <C-K> <C-W>k
" map <C-H> <C-W>h
" map <C-L> <C-W>l

nnoremap * :keepjumps normal! mi*`i<CR>

nnoremap <leader>s :source $MYVIMRC<cr>   " faster sourcing of vimrc
nnoremap <leader>v :edit $MYVIMRC<cr>     " faster editing of vimrc
nnoremap <leader>n :NERDTreeFind<cr>
nnoremap <leader>a :NERDTreeToggle<cr>
noremap <silent> <Leader>c :TComment<cr>

nnoremap <silent> <Ctrl-[> :CtrlPYankring<cr>
" Reformat markdown table
nnoremap <leader>i vip :!reformat-markdown-table<cr>

" insert new lines with cursor at correct indentation
inoremap <CR> <CR>x<BS>

nnoremap <silent> <leader>e :call JSFormat()<cr>
nnoremap <C-o> <leader>e :call JSFormat()<cr>

nnoremap Q <Nop>  " Disable default ex mode shortcut

" From http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" move by rows instead of lines for when wrapping is set
nnoremap j gj
nnoremap k gk
nnoremap <leader>o o<ESC>
nnoremap <leader>O O<ESC>
"" clear search highlighting when pressing return

"" preserve indentation while pasting text from the OS X clipboard
"" use ,p dummy
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" center search results going forward
nnoremap n nzz
nnoremap N Nzz
"nnoremap <C-o> <C-o>zz
"nnoremap <C-i> <C-i>zz
""nnoremap <silent> <C-]> :lNext<cr>
"nnoremap <silent> <C-[> :lprevious<cr>

" clear search highlighting
" nnoremap <silent> <leader>l :nohlsearch<CR><C-l>

" use semicolon make it easier to type colon ':' commands without requiring the shift-key
nnoremap ' :
nnoremap : ,
nnoremap ; :
nnoremap ;; ;
" nmap ; :
" regain semicolon ; functionality for repeating "f" or "t" commands
" nnoremap ; :
" nnoremap : ;
" vnoremap ; :
" vnoremap : ;

inoremap jj <Esc>
inoremap jk <Esc>
inoremap <expr> <tab> InsertTabWrapper()

nnoremap <leader>, :lprev<CR>
nnoremap <leader>. :lnext<CR>

map <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

if has('nvim')
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
  " Hack to get C-h working in neovim
  nmap <BS> <C-W>h
  tnoremap <Esc> <C-\><C-n>
endif

" Deoplete mappings
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR> pumvisible()? "\<C-y>" : "\<CR>"

" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

nnoremap ]l :try<bar>lnext<bar>catch /^Vim\%((\a\+)\)\=:E\%(553\<bar>42\):/<bar>lfirst<bar>endtry<cr>


" show color under cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
