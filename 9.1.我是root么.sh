#!/bin/bash
# 我是不是root用户

ROOT_UID=0 # Root的$UID为0

if [ "$UID" -eq "$ROOT_UID" ]
then
    echo "You are root."
else
    echo "You are just an ordinary user (but mom loves you just the same)."
fi

# 另一种方法
ROOTUSER_NAME=root
username=`id -nu` # 或者。。。。 username=`whoami`
if [ "$username" = "$ROOTUSER_NAME" ]
then
    echo "Rooty, toot, toot. You are root."
else
    echo "You are just a regular fella."
fi

exit 0