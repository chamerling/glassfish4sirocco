#!/bin/bash -x

/usr/bin/mysqld_safe &
sleep 5
/usr/bin/mysql -usirocco -psirocco < /sirocco/etc/db/sirocco_db.sql
pkill -f mysqld_safe
