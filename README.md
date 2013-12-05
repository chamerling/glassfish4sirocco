# glassfish4sirocco

Glassfish configured for OW2 Sirocco running on a Docker container.
It contains a mysql server with required databases, a customized Glassfish 4.0 server

## Howto

This assumes that you have docker installed somewhere. If not: **RTFM**.

### Run from index

You can run the container from the docker index. 

    # interactive mode
    docker run -t -i chamerling/glassfish4sirocco:latest /bin/bash
    
    # Daemon mode
    docker run chamerling/glassfish4sirocco:latest

### Run from sources

This is not the fastest solution, but you can do it...

    git clone https://github.com/chamerling/glassfish4sirocco.git
    cd glassfish4sirocco
    sudo ./build.sh
    # Wait...
    #
    # Run in daemon mode
    sudo ./rund.sh
    # or run in interactive mode
    sudo ./run.sh

### Test your Sirocco EAR

Once compiled, copy the EAR to the docker container then

    asadmin deploy sirocco.ear

### Misc

#### Ports

If you run docker on OS X and need to forward all the ports from docker through Vagrant:

    export FORWARD_DOCKER_PORTS=1

Then you can start Vagrant

    vagrant up

#### Glassfish

In order to log into the admin console, you will need to change the admin configuration.

    asadmin enable-secure-admin

Check [SO](http://stackoverflow.com/questions/8619063/glassfish-3-1-1-how-to-enable-secure-admin-for-different-domains) for more details.

## License

MIT
