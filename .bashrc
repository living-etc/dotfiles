PATH=/usr/local:$PATH

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

if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
  . $(brew --prefix)/share/bash-completion/bash_completion
fi

export EDITOR="vim"

export GOPATH=~/Projects/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

export PATH="$PATH:./node_modules/.bin"
export NVM_DIR="/Users/$USER/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
export NVM_DIR="$HOME/.nvm"

export PATH="$PATH:./node_modules/.bin/"

# Warning: Homebrew's sbin was not found in your PATH but you have installed
# formulae that put executables in /usr/local/sbin.
# Consider setting the PATH for example like so
#   echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.bash_profile
#
# This line is added to fix the above output of `brew doctor`
export PATH="/usr/local/sbin:$PATH"
