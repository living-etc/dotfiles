alias grep='grep --color=always'
alias ls='ls -G'
alias gs='git status -sb'

export EDITOR="vim"

[ -f ~/.bash-git-prompt/gitprompt.sh ] && . ~/.bash-git-prompt/gitprompt.sh

platform=`uname`
if [ "$platform" == "Darwin" ]; then
  . ~/.bash_macos
elif [ "$platform" == "Linux" ]; then
  . ~/.bash_linux
fi

[ -f ~/.bash_aws ] && . ~/.bash_aws
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export GIT_PROMPT_ONLY_IN_REPO=0
export GIT_PROMPT_FETCH_REMOTE_STATUS=0
export GIT_PROMPT_THEME=Plague_Doctor
