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
plugins=(git bundler gem ruby rake svn github)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...


# Use VI mode
set -o vi

# Env Path
export PATH="/usr/local/bin:$PATH"


#http://mgtuiw.blog.163.com/blog/static/7099195320111015115013243/
mvim() {   (unset GEM_PATH GEM_HOME; command mvim "$@") } 

alias tumx='tmux -2'
# Helpful tmux aliases for interacting with the system clipboard.
alias tmux-buffer-to-clipboard='tmux save-buffer -|pbcopy'
alias tmux-buffer-from-clipboard='tmux set-buffer "$(pbpaste)"'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


# source chruby scripts
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh


# Go development
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"
export GO111MODULE=on
#export GOPROXY=https://goproxy.cn
export GOPROXY=https://mirrors.aliyun.com/goproxy/


# replace mac system ruby
# brew update ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"

# flutter setting
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

#export PUB_HOSTED_URL=https://mirrors.tuna.tsinghua.edu.cn/dart-pub
#export FLUTTER_STORAGE_BASE_URL=https://mirrors.tuna.tsinghua.edu.cn/flutter

#export PUB_HOSTED_URL=https://dart-pub.mirrors.sjtug.sjtu.edu.cn
#export FLUTTER_STORAGE_BASE_URL=https://mirrors.sjtug.sjtu.edu.cn
export PATH="$PATH:$HOME/projects/flutter/bin"
#export GRADLE_OPTS='-DsocksProxyHost=127.0.0.1 -DsocksProxyPort=1087'

# proxy setting
function proxyoff(){
    unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY all_proxy ALL_PROXY
    echo -e "\033[0;32m Proxy off ...\033[0m"
    curl cip.cc
}
function unproxy(){
    proxyoff
}
function proxyon(){
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    export http_proxy="http://127.0.0.1:1087" https_proxy=$http_proxy HTTP_PROXY=$http_proxy HTTPS_PROXY=$http_proxy all_proxy=$http_proxy ALL_PROXY=$http_proxy
    echo -e "\033[0;32m Proxy on ...\033[0m"
    curl cip.cc
}
function proxy() {
    proxyon
}

# alias
alias gpp='git push; git push bitbucket; git push coding'

