FROM seachaos/python-xeus-cling:python-3.7.0-xeus-cling

ADD ./setup_jupyter.sh /root/setup_jupyter.sh
RUN chmod +x /root/setup_jupyter.sh && /root/setup_jupyter.sh
CMD su jupyter -- /home/jupyter/run.sh