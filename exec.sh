#!/bin/bash
# File              : exec.sh
# Author            : Yanqing Wu <meet.yanqing.wu@gmail.com>
# Date              : 17.01.2020
# Last Modified Date: 17.01.2020
# Last Modified By  : Yanqing Wu <meet.yanqing.wu@gmail.com>

cd ~/github
git clone https://github.com/soimort/translate-shell
cd translate-shell/
make
sudo make install

cd ~/.vim/bundle
git clone git@github.com:ycm-core/YouCompleteMe.git
# Vim-orgmode
# Install guide:
# https://vimawesome.com/plugin/vim-orgmode
git clone git@github.com:jceb/vim-orgmode.git
