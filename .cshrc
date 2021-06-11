if (! $?prompt) exit

# set locale
#setenv  LANG       zh_TW.Big5
#setenv  LC_CTYPE   en_US.ISO8859-1
#setenv  LC_TIME    C
setenv LANGUAGE en_US.UTF-8
setenv LC_ALL   en_US.UTF-8
setenv LC_CTYPE en_US.UTF-8
setenv LANG     en_US.UTF-8

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
alias countryroads 'cd ~'
set fzf_preview_window_opt='--bind up:preview-up,down:preview-down --reverse --preview-window down:80%:wrap '
set fzf_color_schemes_nord='--color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C --color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B'
set fzf_color_schemes_molokai='--color fg:252,bg:233,hl:67,fg+:252,bg+:235,hl+:81 --color info:144,prompt:161,spinner:135,pointer:135,marker:118'
setenv FZF_DEFAULT_OPTS " $fzf_preview_window_opt $fzf_color_schemes_molokai "
alias fcd 'set _dir_=`find * -type d | fzf`;cd $_dir_; echo cd $_dir_'
alias fpreview "fzf-tmux --preview 'bat --number --color always {}'"

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
setenv TERM 'rxvt'
setenv EDITOR vim

set prompt = "${magenta}%n${green}@${yellow}%m${white}[${red}%P${white}][${cyan}%h${white}][%~]${cyan}Orz \n${green}\%${end} "

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

if ( -r ~/.rcfile/.git-completion.tcsh ) then
    source ~/.rcfile/.git-completion.tcsh
endif

set nobeep
bindkey -v

set HOSTNAME=`hostname`
###############################################################################
# setup display
alias dis 'env | grep DISPLAY'
###############################################################################

source ~/.cshrc_cadence_workstation
