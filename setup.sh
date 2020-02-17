#!/usr/bin/env sh

OS=`uname -s`

FILES=""
FILES="$FILES .agignore"
FILES="$FILES .bash_aliases"
FILES="$FILES .bashrc"
FILES="$FILES .cgdb"
FILES="$FILES .cshrc"
FILES="$FILES .dir_colors"
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

        rm -vfr $HOME/.config/awesome> /dev/null
        ln -s $HOME/.rcfile/.config/awesome $HOME/.config/awesome
        ;;
    "Darwin")
        rm -vfr .htoprc > /dev/null
        ln -s $HOME/.rcfile/.htoprc $HOME/.htoprc
        ;;
esac

cd .rcfile

echo "Done"
