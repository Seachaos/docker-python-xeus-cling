# Docker-Jupyter-Xeus-Cling-OpenCV
Docker build base on python image and include xeus-cling  
and you can use OpenCV C++ with this project : )  
( still on working )

# How to use :
1. Install docker.  
2. Setup Jupyter password ( option )
```
./setup_notebook_password.sh
```

3.  Start Jupyter:
```
./start_notebook.sh
```

4. Goto browser and done (example) 
```
http://localhost:8888/
```

5. Stop server:  just press ctrl + c and y 

# Custom Setting
Your notebook and password data is store on your home folder:  ~/docker_jupyter.  

And in file `./config.sh` there you can do more setting (example):
```shell
export IMAGE_NAME=seachaos/python-xeus-cling:python-3.7.0-jupyter-basic-cpp

export LOCAL_PORT=8888

export CONFIG_FILE=$HOME/docker_jupyter/config
export NOTEBOOK_FOLDER=$HOME/docker_jupyter/notebook
```


# Already know issue:
- cpp17 may not working


# Build image road map :
build 1: python-3.7.0-basic ( dependency install )  
build 2: python-3.7.0-xeus-cling ( cling + xeus + llvm )  
build 3: python-3.7.0-jupyter-basic-cpp ( xcpp with juypter )  
build 4: python-3.7.0-opencv ( install opencv )  
build 5: python-3.7.0-jupyter ( other libraries  )  

# Reference :  

https://github.com/root-project/cling  
https://github.com/jupyter-xeus/xeus-cling/  
