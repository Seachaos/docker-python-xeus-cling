FROM seachaos/python-xeus-cling:python-3.7.0-opencv

WORKDIR /root/source
ADD ./install_jupyter_opencv.sh ./install_jupyter_opencv.sh
RUN chmod +x ./install_jupyter_opencv.sh  && ./install_jupyter_opencv.sh

RUN pip3 install pandas keras matplotlib numpy opencv-python tensorflow scikit-learn

CMD chown jupyter -R /notebook && su jupyter -- /home/jupyter/run.sh