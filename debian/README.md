# Debian Linux on Docker

A project for building Docker image based on Debian Linux .

## Supported tags

`gentkit/debian`:<TAG_NAME>

### Debian 13 Trixie | [Dockerfile](Dockerfile)

| Tag name      | Description                                                     |
|---------------|-----------------------------------------------------------------|
| `latest`      | Debian 13 Trixie ( same digest as `gentkit/debian:13.y-slim` )  |
| `slim`        | Debian 13 Trixie ( same digest as `gentkit/debian:13.y-slim` )  |
| `trixie-slim` | Debian 13 Trixie ( same digest as `gentkit/debian:13.y-slim` )  |
| `13-slim`     | Debian 13 Trixie ( same digest as `gentkit/debian:13.y-slim` )  |
| `13.y-slim`   | Debian 13 Trixie ( built based on official `debian:13.y-slim` ) |
| `trixie`      | Debian 13 Trixie ( same digest as `gentkit/debian:13.y` )       |
| `13`          | Debian 13 Trixie ( same digest as `gentkit/debian:13.y` )       |
| `13.y`        | Debian 13 Trixie ( built based on official `debian:13.y` )      |

### Debian 12 Bookworm | [Dockerfile](Dockerfile)

| Tag name        | Description                                                       |
|-----------------|-------------------------------------------------------------------|
| `bookworm-slim` | Debian 12 Bookworm ( same digest as `gentkit/debian:12.y-slim` )  |
| `12-slim`       | Debian 12 Bookworm ( same digest as `gentkit/debian:12.y-slim` )  |
| `12.y-slim`     | Debian 12 Bookworm ( built based on official `debian:12.y-slim` ) |
| `bookworm`      | Debian 12 Bookworm ( same digest as `gentkit/debian:12.y` )       |
| `12`            | Debian 12 Bookworm ( same digest as `gentkit/debian:12.y` )       |
| `12.y`          | Debian 12 Bookworm ( built based on official `debian:12.y` )      |

## Pull and run into a new container

```shell
docker run -it \
--name <CONTAINER_NAME> \
gentkit/debian:<TAG_NAME>
```

## Exec into your running container

```shell
docker exec -it \
<CONTAINER_NAME_OR_ID> \
/bin/sh
```

**NOTE** : Check status and start it using :
**docker ps -a --filter "name=<CONTAINER_NAME>"** and
**docker start <CONTAINER_NAME_OR_ID>**

## License

**gentkit/debian** is licensed under
the [MIT License](LICENSE) .
