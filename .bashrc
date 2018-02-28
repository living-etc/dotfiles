alias grep='grep --color=always'
alias ls='ls -G'
alias gs='git status -sb'

export EDITOR="vim"

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

[ -f ~/.bash_aws ] && . ~/.bash_aws
[ -f ~/.bash_aliases ] && . ~/.bash_aliases
