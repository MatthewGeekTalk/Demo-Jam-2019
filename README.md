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

