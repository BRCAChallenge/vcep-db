#!/bin/bash

IMAGE_NAME=mysql:latest
#docker run --rm -ti --name lamp-container -p 172.17.0.1:3306:3306 --volume /lamp/MONOLITH/mysql/var/lib/mysql:/var/lib/mysql --volume /lamp/MONOLITH/mysql/etc/mysql:/etc/mysql --entrypoint /bin/bash $IMAGE_NAME 
docker run --rm -d -ti --name lamp-container -p 172.17.0.1:3306:3306 --volume /lamp/MONOLITH/mysql/var/lib/mysql:/var/lib/mysql --volume /lamp/MONOLITH/mysql/etc/mysql:/etc/mysql $IMAGE_NAME 
