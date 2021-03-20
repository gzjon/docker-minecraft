# docker-minecraft
Containerized minecraft server

## To run it

Docker:

```bash
docker build -t docker-minecraft-server .
docker run -ti -p 25565:25565 -v $(pwd)/world:/minecraft-server/world docker-minecraft-server
```

Podman:
```bash
podman build -t docker-minecraft-server .
podman run -d -p 25565:25565 -v $(pwd)/world:/minecraft-server/world docker-minecraft-server
```

The world will be saved in your current path under directyory world.
