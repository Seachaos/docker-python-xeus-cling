#!/bin/bash

# this should be run after build.sh

export PREFIX=seachaos/python-xeus-cling
export NAME=python-3.7.0-jupyter-basic-cpp-flatten
export IMAGE=$PREFIX:python-3.7.0-jupyter-basic-cpp

docker run -d --name $NAME -it $IMAGE
docker exec -it $NAME /bin/bash -c "rm -rf /root/source/* && echo 'remove source ok'"
docker stop $NAME
docker export $NAME | docker import - $PREFIX:$NAME
docker rm $NAME