#!/bin/sh

# install mysql command through shell script

userid=$(id -u)
logs_dir=/home/ec2-user/shell-logs
logs_file="$logs_dir/$0.log"
if[ $userid -ne 0 ]; then
echo "pls run this script with root access"
exit 1
fi
##echo "i am continuing"

yum install mysql &>> $logs_file

if [$? -eq 0]; then 
echo "mysql already installed skip"
else
echo "installing mysql"
yum install mysql -y &>> $logs_file
validate mysql $?
fi

yum list install nginx &>> $logs_file
if[$? -eq 0]; then
echo "nginx alreay installed" 
else
echo "installing nginx"
dnf install nginx -y &>> $logs_file
validate nginx $?

fi
#dnf list installed mysql   chek mysql is install or not
#echo $?
#dnf list installed mysql-sever
#mysql --version