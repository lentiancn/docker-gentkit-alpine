# Debian Linux on Docker

A project for building Docker image based on Debian Linux .

## Supported tags

`gentkit/debian`:<TAG_NAME>

### Debian 13 Trixie | [Dockerfile](Dockerfile)

| Tag Format        | Example       | Description                                                           |
|-------------------|---------------|-----------------------------------------------------------------------|
| `latest`          | `latest`      | Debian 13 Trixie ( same digest as `gentkit/debian:13.<Minor>-slim` )  |
| `slim`            | `slim`        | Debian 13 Trixie ( same digest as `gentkit/debian:13.<Minor>-slim` )  |
| `trixie-slim`     | `trixie-slim` | Debian 13 Trixie ( same digest as `gentkit/debian:13.<Minor>-slim` )  |
| `13-slim`         | `13-slim`     | Debian 13 Trixie ( same digest as `gentkit/debian:13.<Minor>-slim` )  |
| `13.<Minor>-slim` | `13.4-slim`   | Debian 13 Trixie ( built based on official `debian:13.<Minor>-slim` ) |
| `trixie`          | `trixie`      | Debian 13 Trixie ( same digest as `gentkit/debian:13.<Minor>` )       |
| `13`              | `13`          | Debian 13 Trixie ( same digest as `gentkit/debian:13.<Minor>` )       |
| `13.<Minor>`      | `13.4`        | Debian 13 Trixie ( built based on official `debian:13.<Minor>` )      |

**NOTE** : <Minor> refers to the actual minor version number (e.g., use 4 for Debian 13.4) .

### Debian 12 Bookworm | [Dockerfile](Dockerfile)

| Tag Format        | Example         | Description                                                             |
|-------------------|-----------------|-------------------------------------------------------------------------|
| `bookworm-slim`   | `bookworm-slim` | Debian 12 Bookworm ( same digest as `gentkit/debian:12.<Minor>-slim` )  |
| `12-slim`         | `12-slim`       | Debian 12 Bookworm ( same digest as `gentkit/debian:12.<Minor>-slim` )  |
| `12.<Minor>-slim` | `12.13-slim`    | Debian 12 Bookworm ( built based on official `debian:12.<Minor>-slim` ) |
| `bookworm`        | `bookworm`      | Debian 12 Bookworm ( same digest as `gentkit/debian:12.<Minor>` )       |
| `12`              | `12`            | Debian 12 Bookworm ( same digest as `gentkit/debian:12.<Minor>` )       |
| `12.<Minor>`      | `12.13`         | Debian 12 Bookworm ( built based on official `debian:12.<Minor>` )      |

**NOTE** : <Minor> refers to the actual minor version number (e.g., use 13 for Debian 12.13) .

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
