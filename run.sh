#!/bin/bash

echo "****************************************************************"
echo "*     This will run the container in interactive mode          *"
echo "* Once started, launch ./start.sh to start mysql and glassfish *"
echo "****************************************************************"

docker run -i -t chamerling/glassfish4sirocco /bin/bash