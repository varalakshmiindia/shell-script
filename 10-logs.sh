#!/bin/sh

# install mysql command through shell script

USERID=$(id -u)
logs_dir=/var/log/shell-script
logs_file="$logs_dir/$0.log"   #/home/root/shell-logs/10.logs.sh.log

if [ $USERID -ne 0 ]; then
echo "pls run this script with root access"
exit 1
fi


echo "i am continuing"

 yum install mysql &>> $logs_file

 if [ $? -eq 0]; then 
 echo "mysql already installed skip"
 else
 echo "installing mysql"
 yum install mysql -y &>> $logs_file
 validate mysql $?
 fi

 yum list install nginx &>> $logs_file
 if [ $? -eq 0 ]; then
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
# sudo mkdir /var/log/shell-script
#ssudo chown -R ec2-user:ec2-user /var/log/shell-script
# sudo chmod 755 -R  /var/log/shell-script

