# set locale
#setenv  LANG       zh_TW.Big5
#setenv  LC_CTYPE   en_US.ISO8859-1
#setenv  LC_TIME    C

# hotkey
alias vi vim
alias duh du -h
alias dfh df -h
alias ls 'ls --color=auto'
alias ll ls -l
alias la ls -a
alias lla ls -la
alias rm rm -i
alias cls clear
alias more less
alias grep grep --color=always -n
alias tree tree -F -C -N
alias bdate date +%Y_%m%d_%H%M
alias dirdiff diff --brief -r
alias tmux tmux -2
alias ctags_cpp "ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --exclude=.git"
alias cscope_c 'find ./ -name "*.c" -or -name "*.h" -or -name "*.cpp" -or -name "*.S"  -or -name "*.s"| cscope -Rbqk'
alias delete_broken_symlinks 'find . -xtype l -delete'

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

setenv LESS_TERMCAP_mb `bash -c 'echo -en "\033[01;31m"'`
setenv LESS_TERMCAP_md `bash -c 'echo -en "\033[01;31m"'`
setenv LESS_TERMCAP_me `bash -c 'echo -en "\033[0m"'`
setenv LESS_TERMCAP_se `bash -c 'echo -en "\033[0m"'`
setenv LESS_TERMCAP_so `bash -c 'echo -en "\033[01;44;33m"'`
setenv LESS_TERMCAP_ue `bash -c 'echo -en "\033[0m"'`
setenv LESS_TERMCAP_us `bash -c 'echo -en "\033[01;32m"'`
setenv EDITOR vim

set prompt = "${magenta}%n${green}@${yellow}%m${white}[${red}%P${white}][${cyan}%h${white}][%~]${cyan}Orz \n${green}\%${end} "
# set path = ($HOME/opt/bin /sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin /usr/X11R6/bin $path)
set path = ($HOME/opt/bin $path)

eval `dircolors -c ~/.dir_colors`

set autoexpand
set autolist
set color
set complete
set dunique
set ignoreeof
set listjobs
set noclobber
set notify

bindkey -v
