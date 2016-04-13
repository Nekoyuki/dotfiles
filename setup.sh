#!/bin/sh
# ln -sf ~/dotfiles/my_vimrc ~/.vimrc
# ln -sf ~/dotfiles/my_minttyrc ~/.minttyrc
ln -sf ~/dotfiles/my_vimshrc ~/.vimshrc

case ${OSTYPE} in
    linux*)
        ;;
    msys*)
        ln -sf ~/dotfiles/msys2_shell_UTF-8.bat /c/msys64/msys2_shell_UTF-8.bat
        ln -sf ~/dotfiles/my_minttyrc_UTF-8 /c/msys64/my_minttyrc_UTF-8
        ln -sf ~/dotfiles/msys2_shell_SJIS.bat /c/msys64/msys2_shell_SJIS.bat
        ln -sf ~/dotfiles/my_minttyrc_SJIS /c/msys64//my_minttyrc_SJIS
        ;;
esac

