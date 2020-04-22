#!/bin/bash
# File              : update_hosts.sh
# Author            : Yanqing Wu <meet.yanqing.wu@gmail.com>
# Date              : 03.11.2019
# Last Modified Date: 03.11.2019
# Last Modified By  : Yanqing Wu <meet.yanqing.wu@gmail.com>
HOST_BLOCK_URL='https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn/hosts'
HOST_FILENAME='hosts'
CUSTOM_HOST='custom_hosts'

head -10 /etc/hosts > $HOST_FILENAME

# awk is 1-based
cat $CUSTOM_HOST | awk '{split($0,tmp," "); if (tmp[1] ~/0.0.0.0/) print tmp[1] " " tmp[2];}' >> $HOST_FILENAME
echo $HOST_BLOCK_URL
curl $HOST_BLOCK_URL | awk '{split($0,tmp," "); if (tmp[1] ~/0.0.0.0/) print tmp[1] " " tmp[2];}' >> $HOST_FILENAME

mv $HOST_FILENAME /etc/
