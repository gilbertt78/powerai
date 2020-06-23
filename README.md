# powerai
To run SnapML in docker

nvidia-docker run -ti -p 8888:8888 --env LICENSE=yes ibmcom/powerai:1.7.0-snap-ml-ubuntu18.04-py37

In container
#conda install jupyter
#conda install seaborn
#conda install scikit-learn

#jupyter notebook --ip 0.0.0.0 --no-browser –allow-root

On host machine, go to browser

localhost:8888/tree
