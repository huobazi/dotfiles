ZSH=$HOME/.oh-my-zsh
ZSH_THEME="fox"
export TERM="xterm-256color"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler gem rails3 ruby rvm rake svn github)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# http://episko.posterous.com/brew-zsh-git-and-rvm
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

alias tumx='tmux -2'

PATH=/usr/local/bin:$PATH:/usr/local/rvm/bin # Add RVM to PATH for scripting
