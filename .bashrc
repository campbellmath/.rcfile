# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
    xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
    *)
    ;;
esac

###############################################################################
# enable color support of ls and also add handy aliases
###############################################################################
test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
###############################################################################
# set env in different OS
OS=`uname -s`
HOSTNAME=`uname -n`

export PATH=$HOME/opt/bin:$PATH
case $OS in
    "Linux")
        echo "Linux"
        C_ALL=
        LANG=
        LC_CTYPE=zh_TW.utf8
        LC_COLLATE=C
        export LC_TIME=C
        export LANG LC_CTYPE LC_COLLATE
    ;;
    "Darwin")
        export PATH="$HOME/opt/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH"
        export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
        echo "Mac OS X"
        export LC_ALL=en_US.UTF-8
        export LC_COLLATE=C
        export LC_TIME=C
    ;;
esac
export EDITOR="vim"
set -o vi

if [ -f ~/.rcfile/.git-completion.bash ]; then
    . ~/.rcfile/.git-completion.bash
fi

if [ -f ~/.rcfile/.android ]; then
    . ~/.rcfile/.android
fi
###############################################################################
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /usr/local/share/bash-completion/bash_completion.sh ]; then
    . /usr/local/share/bash-completion/bash_completion.sh
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

###############################################################################
# for colorful termial
# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed
# Text color codes:
# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white
# Background color codes:
# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white
end="\[\e[0m\]"
black="\[\e[1;30m\]"
red="\[\e[1;31m\]"
green="\[\e[1;32m\]"
yellow="\[\e[1;33m\]"
blue="\[\e[1;34m\]"
magenta="\[\e[1;35m\]"
cyan="\[\e[1;36m\]"
white="\[\e[1;37m\]"
darkblack="\[\e[30m\]"
darkred="\[\e[31m\]"
darkgreen="\[\e[32m\]"
darkyellow="\[\e[33m\]"
darkblue="\[\e[34m\]"
darkmagenta="\[\e[35m\]"
darkcyan="\[\e[36m\]"
darkwhite="\[\e[37m\]"
user=$magenta"\u"$end
at=$green"@"$end
localhost=$yellow"\h"$end
left=$white"["$end
right=$white"]"$end
command_number=$left$cyan"\#"$end$right
time_=$left$red"\t"$end$right
dir=$white"[\w]"$end
orz=$cyan"Orz"$end
gitbranch="\$(git branch > /dev/null 2>&1 && git branch | grep \"*\" | awk '{ printf \"[⚡ $green%s$end]\", \$2 }')"
prompt="$green% "$end
PS1="$user$at$localhost$time_$command_number$gitbranch$dir$orz\n$prompt"
###############################################################################
# For colourful man pages (CLUG-Wiki style)
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
###############################################################################
# export LIBGL_ALWAYS_INDIRECT=1
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
fzf_preview_window_opt='--bind up:preview-up,down:preview-down --reverse --preview-window down:80%:wrap '
fzf_color_schemes_nord='--color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C --color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B'
fzf_color_schemes_molokai='--color fg:252,bg:233,hl:67,fg+:252,bg+:235,hl+:81 --color info:144,prompt:161,spinner:135,pointer:135,marker:118'
export FZF_DEFAULT_OPTS=" $fzf_preview_window_opt $fzf_color_schemes_molokai "
