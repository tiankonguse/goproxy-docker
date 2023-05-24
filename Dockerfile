# 表示依赖 alpine 最新版
FROM alpine:latest
MAINTAINER tiankongusen<tiankongusen@gmail.com>
ENV VERSION 1.0

# 在容器根目录 创建一个 apps 目录
WORKDIR /apps


# 拷贝当前目录下 go_docker_demo1 可以执行文件
COPY proxy /apps/proxy

# 暴露端口
EXPOSE 80
EXPOSE 4399

# 运行golang程序的命令
CMD ["/apps/proxy", "socks", "-t", "tcp", " -p", "0.0.0.0:80", "--forever"]

