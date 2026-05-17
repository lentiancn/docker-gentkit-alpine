# Debian Linux on Docker

A project for building Docker image based on Debian Linux .

## Supported tags

### Debian Linux (VARIANT=slim) | [Dockerfile](Dockerfile)

| Tag             | Description                                                       |
|-----------------|-------------------------------------------------------------------|
| `latest`        | Alias of the latest slim image                                    |
| `slim`          | Latest Debian slim base image                                     |
| `trixie-slim`   | Debian 13 slim variant, built based on official `debian:trixie`   |
| `13-slim`       | Version alias tag, built from local `trixie-slim` image           |
| `bookworm-slim` | Debian 12 slim variant, built based on official `debian:bookworm` |
| `12-slim`       | Version alias tag, built from local `bookworm-slim` image         |

### Debian Linux (VARIANT=standard) | [Dockerfile](Dockerfile)

| Tag        | Description                                                           |
|------------|-----------------------------------------------------------------------|
| `trixie`   | Debian 13 standard variant, built based on official `debian:trixie`   |
| `13`       | Version alias tag, built from local `trixie` image                    |
| `bookworm` | Debian 12 standard variant, built based on official `debian:bookworm` |
| `12`       | Version alias tag, built from local `bookworm` image                  |

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
