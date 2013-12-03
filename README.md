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

## License

MIT
