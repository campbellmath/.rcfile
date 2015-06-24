# $FreeBSD: src/etc/csh.cshrc,v 1.3 1999/08/27 23:23:40 peter Exp $
#
# System-wide .cshrc file for csh(1).
# locale
#setenv  LANG       zh_TW.Big5
setenv  LC_CTYPE   en_US.ISO8859-1
setenv  LC_TIME    C

# hotkey
alias vi vim
alias duh du -h
alias dfh df -h
alias ll ls -l
alias la ls -a
alias lla ls -la
alias rm rm -i
alias cls clear
alias more less
#alias cd 'chdir \!* ; set cdcwd=`expr "/$cwd" : "$cdexpr"`;'

if ( -x /usr/local/bin/gnuls ) then
    alias ls 'gnuls -F --show-control-chars --color=auto'
else
    alias ls 'ls --color=auto'
endif

set       black="%{\033[1;30m%}"
set         red="%{\033[1;31m%}"
set       green="%{\033[1;32m%}"
set      yellow="%{\033[1;33m%}"
set        blue="%{\033[1;34m%}"
set     magenta="%{\033[1;35m%}"
set        cyan="%{\033[1;36m%}"
set       white="%{\033[1;37m%}"
set   darkblack="%{\033[0;30m%}"
set     darkred="%{\033[0;31m%}"
set   darkgreen="%{\033[0;32m%}"
set  darkyellow="%{\033[0;33m%}"
set    darkblue="%{\033[0;34m%}"
set darkmagenta="%{\033[0;35m%}"
set    darkcyan="%{\033[0;36m%}"
set   darkwhite="%{\033[0;37m%}"
set         end="%{\033[0m%}"

set prompt = "${magenta}%n${green}@${yellow}%m${white}[${red}%P${white}][${cyan}%h${white}][%~]${cyan}Orz \n${green}\%${end} "
set path = ($HOME/opt/bin /sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin /usr/X11R6/bin $HOME/bin $HOME/.bin $path)

eval `dircolors -c ~/.dir_colors`

set autolist
set notify
set noclobber
bindkey -v
