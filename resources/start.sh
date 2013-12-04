#!/bin/bash

HOSTLINE=$(echo $(ip -f inet addr show eth0 | grep 'inet' | awk '{ print $2 }' | cut -d/ -f1) $(hostname) $(hostname -s))
echo $HOSTLINE >> /etc/hosts

echo 127.0.0.1     `uname -n` >> /etc/hosts

/usr/bin/mysqld_safe &
asadmin start-domain
while [ 0 -eq 0 ]; do
        sleep 5m
done
