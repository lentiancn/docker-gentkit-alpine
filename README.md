# Alpine Linux on Docker

[![MIT License](https://img.shields.io/github/license/lentiancn/docker-gentkit-alpine.svg?style=flat-square&label=license)](LICENSE)
[![GitHub Release](https://img.shields.io/github/tag/lentiancn/docker-gentkit-alpine.svg?style=flat-square&label=release)](https://github.com/lentiancn/docker-gentkit-alpine/releases)

A project for building Docker image based on Alpine Linux .

## Tag naming standard

| Tag for gentkit/alpine | Description                                                   |
|------------------------|---------------------------------------------------------------|
| ```latest```           | Alpine Linux (Current) from https://www.alpinelinux.org/      |
| ```X```                | Alpine Linux vX (Current) from https://www.alpinelinux.org/   |
| ```X.Y```              | Alpine Linux vX.Y (Current) from https://www.alpinelinux.org/ |
| ```X.Y.Z```            | Alpine Linux vX.Y.Z from https://www.alpinelinux.org/         |

## Pull and run into a new container

```shell
docker run -it \
--name <CONTAINER_NAME> \
gentkit/alpine:latest
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

**gentkit/alpine** is licensed under
the [MIT License](LICENSE) .
