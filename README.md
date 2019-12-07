# Docker Command
docker (container, images, network, volume)

# Docker Nginx Example
docker create nginx
docker ps
docker ps -a

# Docker whalesay Example
docker run docker/whalesay cowsay hello world
# Check Log
docker logs 
# Re-start container
docker start
# Check Log wheather it's same layer
docker logs

# Detached, interactive example
docker run nginx
docker run -d nginx
docker exec -it nginx /bin/bash

# Information about containers
docker images
docker images --no-trunc 

# Docker remove conatiners
docker rm $(docker ps -aq)

# Docker Port Forwarding
docker run -d -p 8081:80 nginx
docker run -d -P nginx

# Check docker network
docker network ls
ifconfig -a
docker exec -it

# Create new network
docker network create test
docker network ls
ifconfig -a
docker run -d --name nginx --network test nginx
docker inspect nginx
docker run -it --name helper --network test alpine:3.8
ping 172.18.0.2
nslookup nginx
ifconfig
wget nginx
cat index.html

