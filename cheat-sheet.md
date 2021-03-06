## Docker Cheat Sheet

Get docker machine IP
```
docker-machine ip default
```
Docker build
```
docker build -t dunn/ubuntu1604java8junit4:v1 .
```
- don't forget the dot at the end

Docker pull
```
docker pull [OPTIONS] NAME[:TAG|@DIGEST]

e.g. 

docker pull edwarddunn/java-code-test-runner:latest
```

Docker run example 
```
docker run -p 8081:8081 -t edwarddunn/java-code-test-runner:latest
```
- ```-p``` flag is used for port mapping - map host port 8081 to the containers port 8081
- ```-t``` flag is a tag
- ```:latest``` refers to the latest image version

See containers running
```
docker ps
```
Stop container
```
docker stop [container id]
```

Images running
```
docker image ls
```

Remove image
```
docker rmi [image name]
```

### Docker Swarm

Start swarm
```
docker swarm init
```
Deploy stack
```
docker stack deploy -c ./docker-compose.yml [swarm name]
```
Check stack is running
```
docker service ls
```
Tear down stack
```
docker stack rm [swarm name]
```
Remove swarm
```
docker swarm leave --force
