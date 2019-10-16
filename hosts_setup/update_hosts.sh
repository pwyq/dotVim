HOST_BLOCK_URL='https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn/hosts'
HOST_FILENAME='hosts'
CUSTOM_HOST='custom_hosts'

head -10 /etc/hosts > $HOST_FILENAME

# awk is 1-based
cat $CUSTOM_HOST | awk '{split($0,tmp," "); if (tmp[1] ~/0.0.0.0/) print tmp[1] " " tmp[2];}' >> $HOST_FILENAME
curl $HOST_BLOCK_URL | awk '{split($0,tmp," "); if (tmp[1] ~/0.0.0.0/) print tmp[1] " " tmp[2];}' >> $HOST_FILENAME

mv $HOST_FILENAME /etc/
