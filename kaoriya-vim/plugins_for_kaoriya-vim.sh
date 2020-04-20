#!/bin/bash
# plugins_for_kaoriya-vim

LIST=(
nathanaelkane/vim-indent-guides
itchyny/lightline.vim
vim-jp/vimdoc-ja
tpope/vim-surround
tyru/caw.vim
scrooloose/syntastic
bronson/vim-trailing-whitespace
altercation/vim-colors-solarized
rhysd/clever-f.vim
gorodinskiy/vim-colorsque
terryma/vim-expand-region
Shougo/unite.vim
scrooloose/nerdtree
davidhalter/jedi-vim
pangloss/vim-javascript
nachumk/systemverilog.vim
)

for i in "${LIST[@]}"; do
    FILE=`echo $i | sed -e 's/.*\///'`
    echo $i
    echo $FILE
    wget --no-check-certificate https://github.com/$i/archive/master.zip -O $FILE.zip
    unzip $FILE.zip
    rm $FILE.zip
    mv $FILE-master $FILE
done
