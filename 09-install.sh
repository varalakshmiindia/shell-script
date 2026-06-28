#!/bin/sh

# install mysql command through shell script
userid=$(id -u)
if[ $userid -ne 0 ]; then
echo "pls run this script with root access"
exit 1
fi
##echo "i am continuing"

echo "install mysql"
yum install mysql -y

if [$? -ne 0]; then 
echo "installling my sql is... failed"
exit 1
else
echo "installling my sql is... success"
fi