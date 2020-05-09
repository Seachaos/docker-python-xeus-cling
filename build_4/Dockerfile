FROM seachaos/python-xeus-cling:python-3.7.0-jupyter-basic-cpp-flatten

ADD ./install_opencv_4_3_0.sh /root/install_opencv_4_3_0.sh
RUN chmod +x /root/install_opencv_4_3_0.sh && /root/install_opencv_4_3_0.sh

CMD chown jupyter -R /notebook && su jupyter -- /home/jupyter/run.sh