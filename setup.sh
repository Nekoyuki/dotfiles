#!/bin/sh
# ln -sf ~/dotfiles/my_vimrc ~/.vimrc
# ln -sf ~/dotfiles/my_minttyrc ~/.minttyrc
ln -sf ~/dotfiles/my_vimshrc ~/.vimshrc

case ${OSTYPE} in
    linux*)
        ;;
    msys*)
        ln -sf ~/dotfiles/my_minttyrc_UTF-8 /c/msys64/my_minttyrc_UTF-8
        ln -sf ~/dotfiles/my_minttyrc_SJIS /c/msys64//my_minttyrc_SJIS
        ;;
esac
