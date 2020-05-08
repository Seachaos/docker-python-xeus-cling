#!/bin/bash
source ./config.sh

docker run --rm \
    -p $LOCAL_PORT:8888 \
    -v $CONFIG_FILE:/home/jupyter/.jupyter/ \
    -v $NOTEBOOK_FOLDER:/notebook/ \
    -it $IMAGE_NAME
    # /bin/bash