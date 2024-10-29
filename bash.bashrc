# System-wide .bashrc file for interactive bash(1) shells.

# To enable the settings / commands in this file for login shells as well,
# this file has to be sourced in /etc/profile.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, overwrite the one in /etc/profile)
# but only if not SUDOing and have SUDO_PS1 set; then assume smart user.
if ! [ -n "${SUDO_USER}" -a -n "${SUDO_PS1}" ]; then
  PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

# Commented out, don't overwrite xterm -T "title" -n "icontitle" by default.
# If this is an xterm set the title to user@host:dir
#case "$TERM" in
#xterm*|rxvt*)
#    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
#    ;;
#*)
#    ;;
#esac

# enable bash completion in interactive shells
#if ! shopt -oq posix; then
#  if [ -f /usr/share/bash-completion/bash_completion ]; then
#    . /usr/share/bash-completion/bash_completion
#  elif [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#  fi
#fi

# sudo hint
if [ ! -e "$HOME/.sudo_as_admin_successful" ] && [ ! -e "$HOME/.hushlogin" ] ; then
    case " $(groups) " in *\ admin\ *|*\ sudo\ *)
    if [ -x /usr/bin/sudo ]; then
        cat <<-EOF
        To run a command as administrator (user "root"), use "sudo <command>".
        See "man sudo_root" for details.

        EOF
    fi
    esac
fi

# if the command-not-found package is installed, use it
if [ -x /usr/lib/command-not-found -o -x /usr/share/command-not-found/command-not-found ]; then
        function command_not_found_handle {
                # check because c-n-f could've been removed in the meantime
                if [ -x /usr/lib/command-not-found ]; then
                   /usr/lib/command-not-found -- "$1"
                   return $?
                elif [ -x /usr/share/command-not-found/command-not-found ]; then
                   /usr/share/command-not-found/command-not-found -- "$1"
                   return $?
                else
                   printf "%s: command not found\n" "$1" >&2
                   return 127
                fi
        }
fi
# some more ls aliases
alias 644='chmod -R 644'
alias 666='chmod -R 666'
alias 755='chmod -R 755'
alias 777='chmod -R 777'
alias c='clear'
alias cd.....='cd ../../../../'
alias cd....='cd ../../../'
alias cd...='cd ../../'
alias cd..='cd ..'
alias chownwww='chown -R www-data:www-data /var/www'
alias clock='grep -E "^model name|^cpu MHz" /proc/cpuinfo'
alias comp='zopfli --i99 --gzip *.js && zopfli --i99 --gzip *.css && chown www-data:www-data *'
alias countfiles='for t in files links directories; do echo `find . -type ${t:0:1} | wc -l` $t; done 2> /dev/null'
alias cp='cp -i'
alias crontabe='crontab -u www-data -e'
alias da='date "+%Y-%m-%d %A %T %Z"'
alias dfly='nice -n -7 dragonfly --cache_mode=true -dbnum 4 --bind localhost --port 6379 & disown'
alias diskspace='du -S | sort -n -r |more'
alias ebrc='edit ~/.bashrc'
alias egrep='egrep --color=auto'
alias f='find . | grep '
alias fgrep='fgrep --color=auto'
alias folders='du -h --max-depth=1'
alias folderssort='find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn'
alias grep='grep --color=auto'
alias h='history | grep '
alias home='cd ~'
alias ip4='wget -qO- ipinfo.io/ip'
alias ip6='wget -qO- ipapi.co/ip'
alias l='ls -CF'
alias la='ls -Alh'
alias la='ls -alShr'
alias labc='ls -lap'
alias lc='ls -lcrh'
alias lc='ls -ltchr'
alias ldir='ls -l | egrep '\''^d'\'''
alias less='less -R'
alias lf='ls -l | egrep -v '\''^d'\'''
alias logs='sudo find /var/log -type f -exec file {} \; | grep '\''text'\'' | cut -d'\'' '\'' -f1 | sed -e'\''s/:$//g'\'' | grep -v '\''[0-9]$'\'' | xargs tail -f'
alias limpa='sudo apt-get autoclean && sudo apt-get autoremove --purge && sudo apt-get clean -y'
alias lk='ls -lShr'
alias ll='ls -alFhs'
alias lm='ls -alh |more'
alias lr='ls -lRh'
alias ls='ls --color=auto'
alias lt='ls -lthr'
alias lu='ls -ltuhr'
alias lw='ls -xAh'
alias lx='ls -lXBh'
alias maior='du -hsx * | sort -rh | head -20'
alias memo='watch -n 1 free -m'
alias mkbz2='tar -cvjf'
alias mkdir='mkdir -p'
alias mkgz='tar -cvzf'
alias mktar='tar -cvf'
alias mod='find . -mmin -10 -type f | xargs ls -l'
alias mountedinfo='df -hT'
alias mv='mv -i'
alias mx='chmod a+x'
alias nmysql='renice -n -6  -u mysql'
alias nredis='renice -n -6  -u redis'
alias openports='netstat -nape --inet'
alias p='ps aux | grep '
alias ping='ping -c 10'
alias porta='ss -plunt'
alias ps='ps auxf'
alias rebootforce='sudo shutdown -r -n now'
alias rebootsafe='sudo shutdown -r now'
alias scr='systemctl restart redis.service && renice -n -6 -u redis'
alias sma='/etc/init.d/mariadb restart && renice -n -5 -u mysql'
alias sme='/etc/init.d/memcached restart'
alias smr='/etc/init.d/mysql restart && renice -n -5 -u mysql'
alias snr='nginx -t && systemctl restart nginx.service'
alias snt='nginx -t && systemctl reload nginx.service'
alias sp6='/etc/init.d/php5.6-fpm restart'
alias sp7='/etc/init.d/php7.0-fpm restart'
alias sp71='/etc/init.d/php7.1-fpm restart'
alias sp72='/etc/init.d/php7.2-fpm restart'
alias sp73='/etc/init.d/php7.3-fpm restart'
alias sp74='/etc/init.d/php7.4-fpm restart'
alias sp81='systemctl restart php8.1-fpm.service'
alias sp82='systemctl restart php8.2-fpm.service'
alias sp83='systemctl restart php8.3-fpm.service'
alias sp8='systemctl restart php8.0-fpm.service'
alias spo='/etc/init.d/postfix restart'
alias topcpu='/bin/ps -eo pcpu,pid,user,args | sort -k 1 -r | head -15'
alias upd='sudo apt-get update && sudo apt-get dist-upgrade'
alias ups='sudo apt-get update && sudo apt-get upgrade && sudo snap refresh'
alias upt='sudo apt-get update && sudo apt-get upgrade'
alias uso='ps aux | sort -nrk 3,3 | head -n 15'
alias ver='lsb_release -a'
