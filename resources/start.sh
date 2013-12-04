#!/bin/bash

/usr/bin/mysqld_safe &
asadmin start-domain
while [ 0 -eq 0 ]; do
        sleep 5m
done
