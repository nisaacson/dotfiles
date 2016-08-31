syntax on

set autoindent
set sw=2
set tabstop=2
set ts=2           " set indent to 2 spaces
set expandtab      " use spaces, not tab characters
set nocompatible   " don't need to be compatible with old vim
set ttyfast
set lazyredraw
set showmatch      " show bracket matches
set showcmd        " show incremental commands in status bar
set ignorecase     " ignore case in search by default
set infercase      " (inf) during keyword completion, fix case of new word (when ignore case is on)"
set hlsearch       " highlight,6 all search matches
set cursorline     " highlight current line
set smartcase      " pay attention to case when caps are used
set incsearch      " show search results as I type
set mouse=a        " enable mouse support
set ttimeoutlen=200 " decrease timeout for faster insert with 'O'
set vb             " enable visual bell (disable audio bell)
set ruler          " show row and column in footer
set scrolloff=5    " minimum lines above/below cursor
set laststatus=2   " always show status bar
set list           listchars=tab:»·,trail:· " show extra space characters
set shortmess=at   " To avoid the 'Hit ENTER to continue' promp
set nofoldenable   " disable cold folding
set wildmenu       " enable bash-style tab completion
set exrc           " enable per-directory .vimrc files
set secure         " disable unsafe commands in local .vimrc files
set relativenumber
set number
set wildmode=list:longest,full

"set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
"set complete-=k complete+=k "include system dictionary in autocomplete

set clipboard=unnamed

"set wildignore+=*/bundle,*/plugin,*/node_modules/,*/tmp/*,*.so,*.swp,*.zip,*.DS_Store     " Speed up Ctrl-P on MacOSX/Linux

" persistent undo
set undofile
set undodir=~/.vimundo
" Store temporary files in a central spot
set backup
set backupdir=~/.backups,~/.tmp,~/tmp,/var/tmp,/tmp " where to put backup files
set directory=~/.backups,~/.tmp,~/tmp,/var/tmp,/tmp " where to put swap files
set backupskip=/tmp/*,/private/tmp/* "do not backup when editing files in these directories
set writebackup "create a backup when saving a file, useful for when vim crashes trying to save a file

if has('persistent_undo')
    set undofile                  " Save undo history to file
    set undodir=~/.vim/tmp/undo// " undo files in folder
    set undolevels=100000          " Maximum number of undos
    set undoreload=100000          " Save complete files for undo on reload if it has less lines than this
endif

" :au InsertLeave <buffer> update
" autocmd InsertLeave * silent! write | Neomake
" autocmd CursorHold * silent! update | Neomake
" autocmd BufWinEnter * sign define mysign
" autocmd BufWinEnter * exe "sign place 1337 line=1 name=mysign buffer=" . bufnr('%')

" automatically change working directory to current file
autocmd BufEnter * silent! lcd %:p:h
autocmd FocusLost * :wa
" autocmd InsertLeave * write " trigger linters on InsertLeave by saving file

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" if has('nvim')
"   " let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"   " let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" elseif empty($TMUX)
"   let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"   let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"   let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" else
"   let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"   let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
"   let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
" endif
