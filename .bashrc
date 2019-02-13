alias ls='ls -G'
alias grep='grep --color=always --exclude="*.swp"'

[ -f ~/.git-completion.bash ] && . ~/.git-completion.bash
[ -f ~/.bash-prompt.bash ] && . ~/.bash-prompt.bash
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export EDITOR="vim"
