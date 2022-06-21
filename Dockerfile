# 基于哪个镜像，需要用一个已有的镜像做载体来创建，这里我使用的java8镜像，如果大家的docker镜像中没有java8，它就会自动去下载
FROM java:openjdk-8-jre-alpine
ARG JAR_FILE
COPY  ${JAR_FILE} app.jar
# 开放9404端口
EXPOSE 8888
# ENTRYPOINT指定容器运行后默认执行的命令
ENTRYPOINT {"java","-jar", "/app.jar"}