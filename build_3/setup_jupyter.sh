#!/bin/bash

useradd jupyter
mkdir -p /home/jupyter/
chown jupyter -R /home/jupyter
mkdir -p /notebook
chown jupyter /notebook

echo "jupyter notebook --generate-config" > /home/jupyter/setup.sh
chmod +x /home/jupyter/setup.sh
su jupyter -- /home/jupyter/setup.sh

echo "cd /notebook && jupyter notebook --no-browser --ip=0.0.0.0" > /home/jupyter/run.sh
chmod +x /home/jupyter/run.sh

echo "jupyter notebook password" > /home/jupyter/modify_password.sh
chmod +x /home/jupyter/modify_password.sh

# jupyter kernelspec install /usr/local/share/jupyter/kernels/xcpp11 --sys-prefix
# jupyter kernelspec install /usr/local/share/jupyter/kernels/xcpp14 --sys-prefix
# jupyter kernelspec install /usr/local/share/jupyter/kernels/xcpp17 --sys-prefix