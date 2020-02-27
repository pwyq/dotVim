#!/bin/bash
# File              : daily_todo_sync.sh
# Author            : Yanqing Wu <meet.yanqing.wu@gmail.com>
# Date              : 17.01.2020
# Last Modified Date: 17.01.2020
# Last Modified By  : Yanqing Wu <meet.yanqing.wu@gmail.com>

t=$(date -u)
git add ./org/*.org
git commit -m "$t sync..."
git push
