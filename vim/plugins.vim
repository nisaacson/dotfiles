function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin('~/.vim/plugged')
Plug 'goatslacker/mango.vim'
Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'benekastah/neomake'
Plug 'christoomey/vim-tmux-navigator'
" "call dein#add('tpope/vim-fugitive')
Plug 'tpope/vim-repeat'
Plug 'editorconfig/editorconfig-vim'
Plug 'elzr/vim-json'
Plug 'tpope/vim-abolish'
Plug 'ntpeters/vim-better-whitespace'
Plug 'sheerun/vim-polyglot'
Plug 'aklt/plantuml-syntax'
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'tpope/vim-unimpaired'
" Plug 'carlitux/deoplete-ternjs'
" Plug 'ternjs/tern_for_vim'
" Plug 'sgur/ctrlp-extensions.vim'
" " Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'craigemery/vim-autotag'
Plug 'carlitux/deoplete-ternjs', { 'do': 'yarn global add tern' }
Plug 'ternjs/tern_for_vim'

Plug 'ryanoasis/vim-devicons'

call plug#end()

" Add or remove your plugins here:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

"Plugin 'pangloss/vim-javascript'
"Plugin 'jelera/vim-javascript-syntax'
"Plugin 'itspriddle/vim-marked'
" Plugin 'digitaltoad/vim-jade'
" Plugin 'godlygeek/tabular.git'
"Plugin 'Glench/Vim-Jinja2-Syntax'
" Plugin 'goldfeld/vim-seek'
" Plugin 'kana/vim-textobj-user'
" Plugin 'kana/vim-textobj-function'
" Plugin 'thinca/vim-textobj-function-javascript'
" Plugin 'chase/vim-ansible-yaml'
" Plugin 'vim-scripts/ReplaceWithRegister.git'
" Plugin 'vim-scripts/BufOnly.vim'
"Plugin 'tpope/vim-markdown'
"call dein#add('vasconcelloslf/YUNOcommit.vim'
"Plugin 'gagoar/StripWhiteSpaces'
" Plugin 'lucidstack/ctrlp-mpc.vim'

" " Required:
" call dein#end()
"
" " Required:
" filetype plugin indent on
"
" " If you want to install not installed plugins on startup.
" "if dein#check_install()
" "  call dein#install()
" "endif
"
" "End dein Scripts-------------------------
"
" "set nocompatible              " be iMproved, required
" " filetype off                  " required
"
" " set the runtime path to include Vundle and initialize
" "set rtp+=~/dotfiles/vim/bundle/Vundle.vim
" "call vundle#begin('$HOME/dotfiles/vim/bundle')
"
" " let Vundle manage Vundle, required
" "Plugin 'gmarik/Vundle.vim'
"
" " Plugin 'scrooloose/syntastic'
