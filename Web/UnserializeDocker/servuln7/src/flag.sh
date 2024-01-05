#!/bin/bash

if [ "$GZCTF_FLAG" = "" ]; then
    GZCTF_FLAG="flag{level7_running_with_progress}";
fi
echo "<?php" > ./flag.php
echo '$flag="'$GZCTF_FLAG'";' >> ./flag.php
# 将变量清空
unset GZCTF_FLAG
# 删除自己
rm -f $0
