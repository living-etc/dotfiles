alias grep='grep --color=always'
alias ls='ls -G'
alias gs='git status -sb'

export EDITOR="vim"

[ -f ~/.bash_aws ] && . ~/.bash_aws
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

platform=`uname`
if [ "$platform" == "Darwin" ]; then
  . ~/.bash_macos
elif [ "$platform" == "Linux" ]; then
  . ~/.bash_linux
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
