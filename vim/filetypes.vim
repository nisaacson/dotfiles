" associate Dockerfile with Dockerfile filetype syntax
autocmd BufNewFile,BufReadPost Dockerfile set filetype=Dockerfile
" associate .conf files with upstart filetype syntqx
autocmd BufRead,BufNewFile *.conf set filetype=upstart
" javascript uses 2 spaces everywhere
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
" call nodejs-man command line program for core docs keyword lookup
autocmd BufReadPost *.js   set keywordprg=nodejs-man

autocmd BufEnter *.js set updatetime=10
" do not extend comments when opening a new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" CocoaPods
au BufNewFile,BufRead Podfile,*.podspec      set filetype=ruby

" associate Utopiafile with json filetype syntax
autocmd BufNewFile,BufReadPost Utopiafile set filetype=json
