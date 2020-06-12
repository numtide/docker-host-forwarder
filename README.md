# Docker Host Forwarder
Docker Host Forwarder is a minimal container that can be used to forward traffic between docker containers and the docker host.

This is a simple fix for https://github.com/docker/for-linux/issues/264


## Features

Entrypoint of the container (/entrypoint.sh) will determine the IP of the host and add it to the /etc/hosts with the name `host.docker.internal`.

socat(1) is preinstalled, making it trivial to forward traffic.

## Usage

To start a container forwarding UDP port 8125 to the host port 8125, use the following command line:

```sh
$ docker run -d draganm/docker-host-forwarder socat UDP4-RECVFROM:8125,fork UDP4-SENDTO:host.docker.internal:8125
```




