if [[ -f ~/.otb/otb.sh ]]; then
  source ~/.otb/otb.sh
fi

alias phone_number='cd ~/Code/otb_www_app/current; echo -n "price: ";read price; echo -n "pax: "; read pax; echo -e "yes\nno\nyes\ntrue\ntrue\n$price\ntrue\n$((pax - 1))\ntrue\ntrue" | bundle exec cap production config:generate:www:phone_number; bundle exec cap production unicorn:restart'

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

alias ls='ls -G'
alias grep='grep --color=always --exclude="*.swp" --exclude-dir={.git,vendor}'
alias gs='git status -sb'

source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export EDITOR="vim"
