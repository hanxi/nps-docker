# nps-docker
Dockerfile for nps

# 启动

```
docker-compose up --build -d
```

PS： 这里下载的包是我自己打包的 nps， 如果需要下载 nps 官方的包，只需要修改 Dockerfile 里的路径和版本号。

```
ENV NPS_VERSION 0.23.1
https://github.com/cnlh/nps/releases/download/v${NPS_VERSION}/linux_amd64_server.tar.gz
```
