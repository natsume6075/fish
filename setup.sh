#!/bin/sh
if test "$DROPBOX" = "" ; then
    echo "Dropboxへのパスを環境変数 DROPBOX に格納してください。"
    echo "bash: export DROPBOX=[pass]"
    exit
else
    mkdir -p ~/.config/
    ln -sfv $DROPBOX/fish ~/.config/fish

    curl -L http://get.oh-my.fish | fish
fi

