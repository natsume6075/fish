#!/bin/sh
SCRIPT_DIR=$(cd $(dirname $0); pwd)
echo $SCRIPT_DIR

mkdir -p ~/.config/
ln -sfv $SCRIPT_DIR ~/.config/

# oh my fish
curl -L http://get.oh-my.fish | fish

# theme 変更
omf install agnoster
omf theme agnoster

