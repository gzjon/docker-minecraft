FROM debian:latest
RUN apt-get update && apt-get install -y default-jdk wget
RUN mkdir /minecraft-server && cd /minecraft-server
WORKDIR /minecraft-server
RUN wget https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar -O minecraft-server
COPY files/*  ./
EXPOSE 25565
ENTRYPOINT [ "java", "-Xmx2048M", "-Xms2048M", "-jar", "minecraft-server", "nogui" ]