# glassfish4sirocco

Glassfish configured for OW2 Sirocco running on a Docker container.
It contains a mysql server with required databases, a customized Glassfish 4.0 server

## Howto

This assumes that you have docker installed somewhere. If not: **RTFM**.

### Run from index

You can run the container from the docker index. 

    # interactive mode
    docker run -t -i chamerling/glassfish4sirocco:latest /bin/bash

### Run from sources

This is not the fastest solution, but you can do it...

    git clone https://github.com/chamerling/glassfish4sirocco.git
    cd glassfish4sirocco
    sudo ./build.sh
    # Wait...
    sudo ./run.sh

### Test your Sirocco EAR

Once compiled, copy the EAR to the docker container then

    asadmin deploy sirocco.ear

### Misc

If you run docker on OS X and need to forward all the ports from docker through Vagrant:

    export FORWARD_DOCKER_PORTS=1

Then you can start Vagrant

    vagrant up

## License

MIT
