## What this dev-env contains
pyenv, to ======================


## Commands to run/Instructions

docker build -t dev-env:1.0 .

docker run -it --name dev-env \<image-id\>


docker image ls

docker run --privileged -it --name dev-env --mount type=bind,source="$(pwd)",target=/app \<image-id\>


'''

## check docker environment
### check docker images
docker image ls (-a, show intermediate containers)

### check docker images
docker container ls (-a, show stopped containers)

### check docker volumes
docker volume ls

### one liner:
docker image ls -a; docker container ls -a; docker volume ls 


## Cleanup Docker Environment
### stop all running docker containers
docker container stop $(docker container ls -aq) 

### remove all docker containers
docker container rm $(docker container ls -aq)

### remove all docker images
docker image rm $(docker image ls -aq)

### remove all docker volumes
docker volume rm $(docker volume ls -aq)

### one liner
docker container stop $(docker container ls -aq); docker container rm $(docker container ls -aq); docker image rm $(docker image ls -aq); docker volume rm $(docker volume ls -aq)










Notes
======


docker rmi -f $(docker images -q)
docker image rm $(docker images ls -q)





### remove all stopped containers
docker container prune


test


docker volume create book-club-volume
docker run -it




# To Dos

when installing a package in a bind mount, update Dockerfile to apt-get install that package...?