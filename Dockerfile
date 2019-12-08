 
FROM busybox:latest

# Set environment variable
ENV my_name matthew

# Set label
LABEL version='1.0'

#Add image
ADD https://github.wdf.sap.corp/raw/slvi/docker-k8s-training/master/docker/res/evil.jpg /home

# copy the custom file
COPY hello /home

#Run command to add new user
RUN adduser -S -D -H -h /home appuser && chown -R appuser /home

# expose the HTTP port
EXPOSE 80

# Entrypoint
ENTRYPOINT ["ls", "-al"]

cd ~/test
docker build -t test/test .
docker run -it --rm test/test ./home

https://docs.docker.com/engine/reference/builder/#understand-how-cmd-and-entrypoint-interact
