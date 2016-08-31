# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

#######################
# configure powerline theme
#######################
ZSH_THEME="avit"
# ZSH_THEME="powerline"

#######################
# environment settings
#######################
export EDITOR="vim"
export VAGRANT_DEFAULT_PROVIDER="vmware_fusion"
export TERM="xterm-256color"
cdpath=(~ ~/Projects/apps ~/Projects/tools ~/Projects/plugins ~/Projects/sites)

ulimit -n 4096
#PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
export PATH=$HOME/bin:/usr/local/heroku/bin:/opt/X11/bin:/opt/local/bin:/usr/local/bin:$PATH


#######################
# aliases
#######################
alias gst="git status"
alias gpt="git push --follow-tags"
alias gbr="git branch"
alias gco="git checkout"
alias gdt="git difftool"
alias gdc="git diff --cached"
alias gdtc="git difftool --cached"
alias up="cd .."
alias "ct"="colorize"
alias v="vagrant"
alias tre="tree -I node_modules"
alias rr="rerun -x -c -b --"
alias py="python"
#alias cowsay="export ANSIBLE_NOCOWS=1 cowsay -f beavis.zen"
#export ANSIBLE_COW_SELECTION="beavis.zen"

# Vagrant
alias vu="vagrant up"
alias vh="vagrant halt"
alias vr="vagrant reload"
alias vd="vagrant destroy"
alias vs="vagrant ssh"
alias vp="vagrant provision"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# zsh-syntax-highlighting must be last
plugins=(git globalias osx rand-quote node npm vagrant battery colored-man web-search brew colorize jsontools zsh-syntax-highlighting)
globalias() {
   if [[ $LBUFFER =~ ' [A-Z0-9]+$' ]]; then
     zle _expand_alias
     zle expand-word
   fi
   zle self-insert
}

zle -N globalias

bindkey " " globalias
bindkey "^ " magic-space           # control-space to bypass completion
bindkey -M isearch " " magic-space # normal space during searches

source $ZSH/oh-my-zsh.sh
unalias sl

# hide user@host in prompt when on local machine for agnoster theme
DEFAULT_USER=noah

# use up and down arrow keys to navigate search history
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

set_terminal_tab_title() {
  print -Pn "\e]1;$1:q\a"
}

# Data Platform Servers
ssh-add ~/.ssh/dev-staging-00.pem  >/dev/null 2>&1
source ~/.nvm/nvm.sh
#indicate_tmux_session_in_terminal() {
  #set_terminal_tab_title "$(tmux display-message -p '#S')"
#}

# show battery percentage as right prompt
#RPROMPT=`battery_pct_prompt`

# precmd_functions=($precmd_functions indicate_tmux_session_in_terminal)
skip_global_compinit=1

function zle-keymap-select zle-line-init
{
    # change cursor shape in iTerm2
    case $KEYMAP in
        vicmd)      print -n -- "\E]50;CursorShape=0\C-G";;  # block cursor
        viins|main) print -n -- "\E]50;CursorShape=1\C-G";;  # line cursor
    esac

    zle reset-prompt
    zle -R
}

function zle-line-finish
{
    print -n -- "\E]50;CursorShape=0\C-G"  # block cursor
}

zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select
