#!/usr/bin/env bash

if [ ! -f /.updated ]; then
	apt-get update && apt-get upgrade -y && DEBIAN_FRONTEND=noninteractive apt-get install -y linux-image-generic-lts-raring linux-headers-generic-lts-raring curl nano screen
	touch /.updated
	shutdown -h now
fi

if [ ! -f /.docker_installed ]; then
	curl -s https://get.docker.io/ubuntu/ | sh
	echo 'DOCKER_OPTS="-H 0.0.0.0:4243"' >> /etc/default/docker
	touch /.docker_installed
	service docker restart
fi