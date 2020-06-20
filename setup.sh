#!/bin/bash
# setup.sh
# Version 2
#*************************************************

DATE=`date +%y%m%d`

mv ~/.bashrc ~/.bashrc_bk_${DATE}
ln -sf ~/dotfiles/home_dotfiles/bashrc ~/.bashrc

mv ~/.zshrc ~/.zshrc_bk_${DATE}
ln -sf ~/dotfiles/home_dotfiles/zshrc ~/.zshrc

mv ~/.vimrc ~/.vimrc_bk_${DATE}
ln -sf ~/dotfiles/home_dotfiles/vimrc ~/.vimrc

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

        if [ -d "${HOME}/.ipython" ]; then
            cd ${HOME}/.ipython/profile_default
                cp ipython_config.py ipython_config.py_bk_${DATE}
                ln -sf ~/dotfiles/dot-ipython/ipython_config.py
            cd ~
            cd ${HOME}/.ipython/profile_default/startup
                cp 00-first.py 00-first.py_bk_${DATE}
                ln -sf ~/dotfiles/dot-ipython/00-first.py .
            cd ~
            :
        fi
        ;;
esac

