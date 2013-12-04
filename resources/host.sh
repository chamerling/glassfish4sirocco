#!/bin/bash

# Add our hostname and Docker-allocated IP address into /etc/hosts
HOSTLINE=$(echo $(ip -f inet addr show eth0 | grep 'inet' | awk '{ print $2 }' | cut -d/ -f1) $(hostname) $(hostname -s))
echo $HOSTLINE >> /etc/hosts
