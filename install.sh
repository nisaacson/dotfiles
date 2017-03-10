#!/bin/bash
set -x

git submodule init && git submodule update
cd ~
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/zshenv ~/.zshenv
ln -s ~/dotfiles/zsh/prezto/runcoms/zpreztorc ~/.zpreztorc
ln -s ~/dotfiles/zsh/zlogin ~/.zlogin
ln -s ~/dotfiles/zsh/prezto/runcoms/zlogout ~/.zlogout
ln -s ~/dotfiles/zsh/prezto/runcoms/zprofile ~/.zprofile
ln -s ~/dotfiles/vim/vimrc ~/.config/nvim/init.vim
ln -s ~/dotfiles/other_dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/other_dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/other_dotfiles/eslintrc ~/.eslintrc

 ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# vim +PluginInstall +qall

~/dotfiles/vim/bundle/YouCompleteMe/install.sh
~/dotfiles/vim/bundle/ctrlp-matcher/install.sh
cd ~/dotfiles/vim/bundle/tern_for_vim && npm install

~/dotfiles/antibody/install.sh

brew update
brew upgrade reattach-to-user-namespace jq tmux
npm install -g esformatter bunyan tern standard standard-format pure-prompt

# Fix ctrl-h issue, see https://github.com/christoomey/vim-tmux-navigator/issues/71
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
tic $TERM.ti
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
exit 1
