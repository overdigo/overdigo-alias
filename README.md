# overdigo-alias

## Atalhos alias para distros baseadas em Debian / Ubuntu

### Lista de alias e explicação

- alias c='clear' -> limpar a tela
- alias h='history' -> história de comandos
- alias cd..='cd ..' -> evitar erro ao não digitar o espaço em cd..
- alias cd...='cd ../../../' -> voltar 3 diretórios de uma vez
- alias cd.....='cd ../../../../' -> voltar 4 diretórios de uma vez
- alias clock='grep -E "^model name|^cpu MHz" /proc/cpuinfo' -> ver clock do CPU
- alias egrep='egrep --color=auto' -> colorir automático
- alias fgrep='fgrep --color=auto' -> colorir automático
- alias grep='grep --color=auto' -> colorir automático
- alias ls='ls --color=auto' -> colorir automático
- alias l='ls -CF' -> 
- alias la='ls -alShr' -> LS com ordem de tamanho (com ocultos)
- alias lc='ls -ltchr' -> LS com ordem de modificados (sem ocultos)
- alias lk='ls -lShr' -> LS com ordem de tamanho (sem ocultos)
- alias ll='ls -alFh' -> LS com ordem de tamanho (com ocultos)
- alias lt='ls -lthr'
- alias lu='ls -ltuhr'
- alias lx='ls -lXhB'
- alias maior='du -hsx * | sort -rh | head -20' -> Exibir maiores arquivos
- alias porta='netstat -plnt' -> verificar portas dos serviços 
- alias scr='/etc/init.d/redis-server restart' - > reiniciar redis-server
- alias smr='/etc/init.d/mysql restart' -> reiniciar Mysql server
- alias snr='nginx -t && /etc/init.d/nginx restart' -> verificar e reiniciar nginx
- alias snt='nginx -t && /etc/init.d/nginx reload' -> verificar e recarregar nginx
- alias sp6='/etc/init.d/php5.6-fpm restart' -> reiniciar php5.6
- alias sp7='/etc/init.d/php7.0-fpm restart' -> reiniciar php7.0
- alias sp71='/etc/init.d/php7.1-fpm restart' -> reiniciar php7.1
- alias sp72='/etc/init.d/php7.2-fpm restart' -> reiniciar php7.2
- alias spo='/etc/init.d/postfix restart' -> reiniciar postfix
- alias upt='apt-get update && apt-get upgrade' -> atualizar repositórios e sofwates via apt-get
- alias upd='apt-get update && apt-get dist-upgrade' -> atualizar repositórios e sofwates via apt-get adicona e remove pacotes
- alias limpa='apt-get clean && apt-get autoclean && apt-get autoremove' -> limpar apt-get
- alias uso='ps aux | sort -nrk 3,3 | head -n 9' -> verifica os 9 processos com maior uso de CPU
- alias mod='find . -mmin -10 -type f | xargs ls -l' -> visualizar arquivos recentemente modificados
