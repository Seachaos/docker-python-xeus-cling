source ./config.sh

docker run --rm \
    -v $CONFIG_FILE:/home/jupyter/.jupyter/ \
    -v $NOTEBOOK_FOLDER:/notebook/ \
    -it $IMAGE_NAME \
    /bin/bash -c 'chown jupyter -R /home/jupyter/.jupyter/ && su jupyter -- /home/jupyter/modify_password.sh'