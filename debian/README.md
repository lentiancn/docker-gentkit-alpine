# Debian Linux on Docker

[![MIT License](https://img.shields.io/github/license/lentiancn/docker-gentkit-debian.svg?style=flat-square&label=license)](LICENSE)
[![GitHub Release](https://img.shields.io/github/tag/lentiancn/docker-gentkit-debian.svg?style=flat-square&label=release)](https://github.com/lentiancn/docker-gentkit-debian/releases)

A project for building Docker image based on Debian Linux .

## Supported tags

### Debian Linux (VARIANT=slim) | [Dockerfile](Dockerfile)

| Tag                        | Description                     |
|----------------------------|---------------------------------|
| `latest`                   | Alias of the latest slim image  |
| `slim`                     | Latest Debian slim base image   |
| `13-slim`, `trixie-slim`   | Debian 13 Trixie slim variant   |
| `12-slim`, `bookworm-slim` | Debian 12 Bookworm slim variant |

### Debian Linux (VARIANT=standard) | [Dockerfile](Dockerfile)

| Tag              | Description                         |
|------------------|-------------------------------------|
| `13`, `trixie`   | Debian 13 Trixie standard variant   |
| `12`, `bookworm` | Debian 12 Bookworm standard variant |

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
