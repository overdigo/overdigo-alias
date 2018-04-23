# overdigo-alias
### H2Atalhos alias para distros baseadas em Debian / Ubuntu

### H3Lista de alias: 

alias c='clear'

alias cd..='cd ..'

alias cd...='cd ../../../'

alias cd.....='cd ../../../../'

alias clock='grep -E "^model name|^cpu MHz" /proc/cpuinfo'

alias egrep='egrep --color=auto'

alias fgrep='fgrep --color=auto'

alias grep='grep --color=auto'

alias h='history'

alias l='ls -CF'

alias la='ls -alShr'

alias lc='ls -ltchr'

alias limpa='apt-get clean && apt-get autoclean && apt-get autoremove'

alias lk='ls -lShr'

alias ll='ls -alFh'

alias ls='ls --color=auto'

alias lt='ls -lthr'

alias lu='ls -ltuhr'

alias lx='ls -lXhB'

alias maior='du -hsx * | sort -rh | head -20'

alias porta='netstat -plnt'

alias scr='/etc/init.d/redis-server restart'

alias smr='/etc/init.d/mysql restart'

alias snr='nginx -t && /etc/init.d/nginx restart'

alias snt='nginx -t && /etc/init.d/nginx reload'

alias sp6='/etc/init.d/php5.6-fpm restart'

alias sp7='/etc/init.d/php7.0-fpm restart'

alias sp71='/etc/init.d/php7.1-fpm restart'

alias sp72='/etc/init.d/php7.2-fpm restart'

alias spo='/etc/init.d/postfix restart'

alias upd='apt-get update && apt-get dist-upgrade'

alias upt='apt-get update && apt-get upgrade'

alias uso='ps aux | sort -nrk 3,3 | head -n 9'

alias mod='find . -mmin -10 -type f | xargs ls -l'

