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

# install curl
sudo apt-get install curl

# for vim-orgmode
sudo apt-get install exuberant-ctags
mkdir ~/org
touch ~/org/index.org
