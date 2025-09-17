# overdigo-alias

## Como usar ?

```javascript
cd ~ && wget -O - https://raw.githubusercontent.com/overdigo/overdigo-alias/master/alias >> ~/.bashrc && source ~/.bashrc
```

## Atalhos alias para distros baseadas em Debian / Ubuntu

### Lista de alias e explicação

- alias psmem='ps auxf | sort -nr -k 4 | head -40' # Lista os 40 processos que mais usam memória (RAM), ordenados do maior para o menor.
- alias pscpu='ps auxf | sort -nr -k 3 | head -40' # Lista os 40 processos que mais usam CPU, ordenados decrescentemente.
- alias ip='ip -c' # cores habilitadas (-c = color). ip addr fica colorido
- alias c='clear' # Limpa a tela do terminal. Atalho rápido
- alias cd.....='cd ../../../../' # Atalhos para subir múltiplos níveis de diretório rapidamente.
- alias cd....='cd ../../../' # Atalhos para subir múltiplos níveis de diretório rapidamente.
- alias cd...='cd ../../' # Atalhos para subir múltiplos níveis de diretório rapidamente.
- alias cd..='cd ..' # Atalhos para subir múltiplos níveis de diretório rapidamente.
- alias chownwww='chown -R www-data:www-data /var/www' # Define o proprietário e grupo www-data recursivamente em /var/www
- alias clock='grep -E "^model name|^cpu MHz" /proc/cpuinfo' # Mostra o modelo e frequência atual do processador. Informações básicas de CPU
- alias countfiles='for t in files links directories; do echo `find . -type ${t:0:1} | wc -l` $t; done 2> /dev/null' # Conta arquivos, links e diretórios no diretório atual
- alias cp='cp -i' # Copia arquivos com confirmação antes de sobrescrever (-i = interactive).
- alias crontabe='crontab -u www-data -e' # Edita o crontab do usuário www-data
- alias diskspace='du -S | sort -n -r |more' # Mostra o uso de disco por subdiretório, ordenado do maior para o menor.
- alias egrep='egrep --color=auto' # Habilitam cores
- alias grep='grep --color=auto' # Habilitam cores
- alias fgrep='fgrep --color=auto' # Habilitam cores
- alias f='find . | grep ' # Busca arquivos/diretórios no diretório atual cujo caminho contenha o termo.
- alias ls='ls --color=auto' # Lista arquivos com cores (padrão moderno).
- alias l='ls -CF' # Lista em colunas (-C) e adiciona indicadores de tipo (-F: / para dir, * para executável, etc)
- alias ll='ls -alFh' # Lista todos os arquivos (-a), em formato longo (-l), com indicadores (-F) e tamanhos legíveis (-h). O mais usado.
- alias la='ls -Alh' # Similar ao ll, mas não mostra . e .. (-A em vez de -a). Mais limpo
- alias ltr='ls -lth' # Lista arquivos por data de modificação, mais recentes primeiro (-t ordena por tempo, -h legível).
- alias lt='ls -lthr' # Lista por data, mais antigos primeiro (-r = reverse)
- alias lkr='ls -lSh' # Lista por tamanho, maiores primeiro (-S ordena por tamanho)
- alias lk='ls -lShr' # Lista por tamanho, menores primeiro (-r inverte)
- alias lx='ls -lXh' # Lista arquivos agrupados por extensão (-X)
- alias lr='ls -lRh' # Lista recursivamente o conteúdo de subdiretórios (-R)
- alias lf='ls -l | grep "^-"' # Lista apenas arquivos regulares (linhas que começam com -).
- alias ld='ls -l | grep "^d"' # Lista apenas diretórios (linhas que começam com d)
- alias less='less -R' # Permite que o less interprete códigos de cor (útil para logs coloridos).
- alias logs='sudo find /var/log -type f -exec file {} \; | grep '\''text'\'' | cut -d'\'' '\'' -f1 | sed -e'\''s/:$//g'\'' | grep -v '\''[0-9]$'\'' | xargs tail -f' # Monitora em tempo real (tail -f) todos os arquivos de log texto em /var/log, exceto os que terminam com número (ex: .1, .gz).
- alias limpa='sudo apt-get autoclean && sudo apt-get autoremove --purge && sudo apt-get clean -y' # Limpa pacotes desnecessários do sistema Debian/Ubuntu
- alias maior='du -hsx * | sort -rh | head -20' # Mostra os 20 maiores diretórios/arquivos no local atual.
- alias memo='watch -n 1 free -m' # Monitora o uso de memória a cada 1 segundo (free -m mostra em MB).
- alias mkbz2='tar -cvjf' # Atalhos para criar arquivos compactados: .tar.bz2 → mkbz2 nome.tar.bz2 arquivos...
- alias mkgz='tar -cvzf' # Atalhos para criar arquivos compactados: .tar.gz → mkgz nome.tar.gz arquivos...
- alias mktar='tar -cvf' # Atalhos para criar arquivos compactados: .tar → mktar nome.tar arquivos...
- alias mkdir='mkdir -p' # Cria diretórios e, se necessário, os diretórios pais (-p). Nunca falha por caminho inexistente.
- alias mod='find . -mmin -10 -type f | xargs ls -l' # Lista arquivos modificados nos últimos 10 minutos
- alias mountedinfo='df -hT' # Mostra discos montados com tipo de sistema de arquivos (-T) e tamanhos legíveis (-h).
- alias mv='mv -i' # Move arquivos com confirmação antes de sobrescrever.
- alias mx='chmod a+x' # Torna arquivos executáveis para todos (a+x = all + execute)
- alias nmysql='renice -n -6 -u mysql' # Aumenta a prioridade dos processos do usuário mysql
- alias nredis='renice -n -6 -u redis' # Aumenta a prioridade dos processos do usuário redis
- alias openports='netstat -nape --inet' # Lista portas de rede abertas com detalhes: processo, PID, usuário, etc.
- alias p='ps aux | grep ' # Procura por processos. Ex: p nginx → lista processos com "nginx".
- alias ping='ping -c 10' # Envia apenas 10 pacotes ICMP e para (evita ping infinito)
- alias porta='ss -plunt' # Mostra portas TCP/UDP ouvindo (-l), com processo (-p), sem resolver nomes (-n), TCP/UDP (-tu). Moderno e rápido.
- alias ps='ps auxf' # Lista todos os processos em formato de árvore (mais legível)
- alias scr='systemctl restart redis.service && renice -n -6 -u redis' # Reinicia o Redis e aumenta sua prioridade.
- alias sma='nice -n -15 systemctl restart mariadb.service && renice -n -5 -u mysql' # Reinicia o MariaDB com prioridade muito alta (nice -15) e ajusta prioridade do usuário mysql
- alias smr='nice -n -15 systemctl restart mysql.service && renice -n -5 -u mysql' # Reinicia MySQL com alta prioridade + ajuste de prioridade do usuário.
- alias snr='nginx -t && systemctl restart nginx.service' # Testa configuração do Nginx (nginx -t) e, se ok, reinicia o serviço
- alias snt='nginx -t && systemctl reload nginx.service' # Testa configuração e recarrega (sem reiniciar) o Nginx — zero downtime.
- alias sp6='/etc/init.d/php5.6-fpm restart' # Reiniciam os serviços do PHP-FPM 5.6
- alias sp7='/etc/init.d/php7.0-fpm restart' # Reiniciam os serviços do PHP-FPM 7.0
- alias sp71='/etc/init.d/php7.1-fpm restart' # Reiniciam os serviços do PHP-FPM 7.1
- alias sp72='/etc/init.d/php7.2-fpm restart' # Reiniciam os serviços do PHP-FPM 7.2
- alias sp73='/etc/init.d/php7.3-fpm restart' # Reiniciam os serviços do PHP-FPM 7.3
- alias sp74='/etc/init.d/php7.4-fpm restart' # Reiniciam os serviços do PHP-FPM 7.4
- alias sp8='systemctl restart php8.0-fpm.service' # Reiniciam os serviços do PHP-FPM 8.0
- alias sp81='systemctl restart php8.1-fpm.service' # Reiniciam os serviços do PHP-FPM 8.1
- alias sp82='systemctl restart php8.2-fpm.service' # Reiniciam os serviços do PHP-FPM 8.2
- alias sp83='systemctl restart php8.3-fpm.service' # Reiniciam os serviços do PHP-FPM 8.3
- alias sp84='systemctl restart php8.4-fpm.service' # Reiniciam os serviços do PHP-FPM 8.4
- alias sp85='systemctl restart php8.5-fpm.service' # Reiniciam os serviços do PHP-FPM 8.5
- alias topcpu='/bin/ps -eo pcpu,pid,user,args | sort -k 1 -r | head -15' # Mostra os 15 processos que mais consomem CPU, com detalhes: %CPU, PID, usuário e comando.
- alias upd='sudo apt-get update && sudo apt-get dist-upgrade' # Atualiza lista de pacotes e faz atualização completa (inclui mudanças de kernel, etc).
- alias ups='sudo apt-get update && sudo apt-get upgrade && sudo snap refresh' # Atualiza pacotes APT + atualiza pacotes Snap.
- alias upt='sudo apt-get update && sudo apt-get upgrade' # Atualização padrão (sem dist-upgrade, mais segura).
- alias uso='ps aux | sort -nrk 3,3 | head -n 40' # Igual ao pscpu — lista 40 processos que mais usam CPU.
- alias ver='lsb_release -a' # Mostra informações da distribuição Linux (nome, versão, codinome, etc).
- alias test='gping 208.67.222.222 2620:119:35::35 1.1.1.1 2606:4700:4700::1111 8.8.8.8 2001:4860:4860::8888 9.9.9.9 2620:fe::fe' # Usa gping (ping gráfico) para testar conectividade com vários DNS públicos
- wp() {
  /usr/local/bin/wp "$@" --allow-root
} # Função que executa o WP-CLI (ferramenta de linha de comando do WordPress) sempre como root
