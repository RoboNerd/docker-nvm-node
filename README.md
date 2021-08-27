# docker-nvm-node
docker image based on ubuntu 20.04 with nvm@0.38.0, node@12.22.5, npm, nrm for FE work. 
* notice: the based version of node is v12.22.5, you can install another by nvm.
## fast use
### pull
please notice your network, if there is a bad network, you can build youself by the methods below.
```shell
docker pull steventx/docker-nvm-node:latest
```

### build for yourself
pull the source code from github : [https://github.com/RoboNerd/docker-nvm-node](https://github.com/RoboNerd/docker-nvm-node)，and welcome to start on github to encourage.
```shell
docker build -t docker-nvm-node:local-v1 --no-cache --network=host .
```
* notice: whether to add --network=host depends on network condition

### run
```shell
   docker run -it steventx/docker-nvm-node /bin/bash
```
## container tools
### nvm
* show node list `nvm ls`
* install node for another version `nvm install <version>`
* change version `nvm use <version>`


### nrm
* show registry list `nrm ls`
* change registry `nrm use taobao`
