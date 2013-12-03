#!/bin/bash -x
/usr/bin/mysqld_safe &
sleep 5
/usr/bin/mysql -u root -proot123 -e "CREATE USER 'sirocco'@'localhost' IDENTIFIED BY 'sirocco'; GRANT ALL PRIVILEGES ON *.* TO 'sirocco'@'localhost' WITH GRANT OPTION; CREATE DATABASE sirocco; GRANT ALL ON *.* to sirocco@'%' IDENTIFIED BY 'sirocco';"
pkill -f mysqld
