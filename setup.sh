#!/usr/bin/env sh

OS=`uname -s`

FILES=""
FILES="$FILES .agignore"
FILES="$FILES .bash_aliases"
FILES="$FILES .bashrc"
FILES="$FILES .cgdb"
FILES="$FILES .cshrc"
FILES="$FILES .dircolors"
FILES="$FILES .emacs"
FILES="$FILES .gdbinit"
FILES="$FILES .gitconfig"
FILES="$FILES .gitignore_global"
FILES="$FILES .profile"
FILES="$FILES .screenrc"
FILES="$FILES .tmux.conf"
FILES="$FILES .urxvt"
FILES="$FILES .Xdefaults"
FILES="$FILES .Xresources"
FILES="$FILES .minttyrc"
FILES="$FILES .vnc"
FILES="$FILES .clang-format"
FILES="$FILES .clang-tidy"

cd $HOME

for FILE in $FILES; do
    rm -vfr $FILE > /dev/null
    ln -s $HOME/.rcfile/$FILE $HOME
done
case $OS in
    "Linux")
        rm -vfr $HOME/.config/htop > /dev/null
        mkdir -p $HOME/.config/htop > /dev/null
        ln -s $HOME/.rcfile/.htoprc $HOME/.config/htop/htoprc

        ln -s $HOME/.rcfile/.config/i3 $HOME/.config/i3
        # rm -vfr $HOME/.config/awesome > /dev/null
        # ln -s $HOME/.rcfile/.config/awesome $HOME/.config/awesome
        # current_dir=`pwd`
        # cd $HOME/.rcfile/.config/awesome
        # git submodule init
        # git submodule update
        # cd $current_dir
        ;;
    "Darwin")
        rm -vfr .htoprc > /dev/null
        ln -s $HOME/.rcfile/.htoprc $HOME/.htoprc
        ;;
esac

cd .rcfile

echo "Done"
