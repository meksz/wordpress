#!/bin/bash

SHARING_PATH="/home/umut/projects/patibadi/docker/shared"

VOLUME1="$SHARING_PATH/mysql:/var/lib/mysql"
VOLUME2="$SHARING_PATH/wordpress:/var/www/html/wordpress"

#docker run -d -i -t -p 127.0.0.1:80:80 -p 22:22 --name wordpress -v $VOLUME1 -v $VOLUME2 -v $VOLUME3 meksz/wordpress:v1

docker run -d -i -t -p 127.0.0.1:80:80 -p 22:22 --name wordpress -v $VOLUME1 -v $VOLUME2 meksz/wordpress:v1

#sudo chown -R umut.umut $SHARING_PATH
