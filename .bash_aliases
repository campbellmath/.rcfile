alias ls='ls -F --color=auto'
alias dir='dir --color=auto'
alias dirdiff='diff --brief -r'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias duh="du -h"
alias dfh="df -h"
alias tree="tree -F -C -N"
alias rm="rm -i"
alias bdate="date +%Y_%m%d_%H%M"
alias mana="man -a"
alias cp="cp -i"
alias mv="mv -i"
alias ll="ls -l"
alias llh="ls -l -h"
alias la="ls -a"
alias lla="ls -la"
alias llha="ls -lah"
alias llah="ls -lah"
alias less="less -r"
alias grep="grep --color"
alias tmux="tmux -2"
alias tmux_reset="ps -C tmux -o pid= && killall -s SIGUSR1 tmux"
alias matlabcli="matlab -nodesktop -nosplash -nojvm"
alias ctags_cpp="ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --exclude=.git"
alias ctags_java="ctags --recurse --langmap=Java:.java --languages=Java --verbose --exclude=.git"
alias cscope_c="find ./ -name \"*.c\" -or -name \"*.h\" -or -name \"*.cpp\" -or -name \"*.S\" | cscope -Rbqk"
alias VBoxFreeBSD="VBoxHeadless -s freebsd -v off &" # MAC Address ????????????
alias VBoxWin10="VBoxHeadless -s euclid -v off &" # MAC Address 080027A676E2
alias VBoxCentOS7="VBoxHeadless -s centos7 -v off &" # MAC Address ????????????
alias vnc="vncserver -depth 24"
alias vncnolocalhost="vncserver -depth 24 -localhost no"
alias dis="env | grep DISPLAY"
function gi() { args=$@; curl -L -s https://www.gitignore.io/api/${args}; }
function weather() { args=$@; curl -4 wttr.in/${args}; }

OS=`uname -s`
case $OS in
    "Linux")
        alias dual_screen="xrandr --auto --output HDMI1 --mode 1920x1080 --left-of VGA1"
        ;;
    "Darwin")
        if [ -d  /Applications/Emacs.app ]; then
            alias emacs=/Applications/Emacs.app/Contents/MacOS/Emacs
        fi
        ;;
esac
# vim:set ft=sh:
