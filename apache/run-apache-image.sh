#!/bin/bash

IMAGE_NAME=apache:latest
#docker run --rm -ti --name apache-container -p 172.17.0.1:80:80 --volume /lamp/MONOLITH/apache/var/www/html:/var/www/html --volume /lamp/MONOLITH/apache/etc/apache2:/etc/apache2 --entrypoint /bin/bash $IMAGE_NAME 
docker run --rm -d -ti --name apache-container -p 172.17.0.1:80:80 --volume /lamp/MONOLITH/apache/var/www/html:/var/www/html --volume /lamp/MONOLITH/apache/etc/apache2:/etc/apache2 $IMAGE_NAME 
