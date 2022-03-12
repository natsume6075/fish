#!/bin/sh
SCRIPT_DIR=$(cd $(dirname $0); pwd)

mkdir -p ~/.config/
ln -sfv $SCRIPT_DIR ~/.config/

echo "Install oh-my-fish? (y/[other])"
read input
if [ $input = 'y' ] ; then
    curl -L http://get.oh-my.fish | fish
    echo "If you want to change theme, type: omf install [theme_name(ex.pure)]"
fi

