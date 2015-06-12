PATH=$PATH:$HOME/.rvm/bin
source ~/.rvm/scripts/rvm

reset="\[\e[0m\]"
red="\[\e[0;31m\]"
blue="\[\e[0;34m\]"
cyan="\[\e[0;36m\]"
green="\[\e[0;32m\]"
dir="\w"
branch="\$(__git_ps1)"
ruby="(\$(rvm-prompt v))"

PS1="$red$dir$reset $green$ruby$reset$cyan$branch$reset\n$ "

alias grep='grep --color=always'
alias ls='ls -G'
alias gs='git status -sb'

source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export EDITOR="vim"

export GOPATH=~/Dropbox/Projects/go
export PATH=$PATH:$GOPATH/bin

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=~/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
