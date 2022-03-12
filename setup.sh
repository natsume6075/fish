#!/bin/sh
SCRIPT_DIR=$(cd $(dirname $0); pwd)

function GetConfirmation() {
    echo "$1 (y/n)"
    read input
    if [ "$input" = 'y' ] ; then
        return 1
    elif [ "$input" = 'n' ] ; then
        return 0
    else
        GetConfirmation "$1"
    fi
}


mkdir -p ~/.config/
ln -sfv $SCRIPT_DIR ~/.config/

# If necessary, install oh-my-fish.
if ! GetConfirmation "Install oh-my-fish?" ; then
    curl -L http://get.oh-my.fish | fish
    echo "If you want to change theme, type: omf install [theme_name(ex.pure)]"
fi

