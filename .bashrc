source ~/.otb/otb.sh
alias phone_number='cd ~/Code/otb_www_app/current; echo -n "price: ";read price; echo -n "pax: "; read pax; echo -e "yes\nno\nyes\ntrue\ntrue\n$price\ntrue\n$((pax - 1))\ntrue\ntrue" | bundle exec cap production config:generate:www:phone_number; bundle exec cap production unicorn:restart'

PATH=$PATH:$HOME/.rvm/bin

PS1='%~ $ '

alias ls='ls -G'
alias grep='grep --color=always --exclude="*.swp"'
