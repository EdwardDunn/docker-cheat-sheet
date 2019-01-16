## Docker Cheat Sheet

Get docker machine IP
```
docker-machine ip default
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
