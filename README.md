# Alpine Linux on Docker

[![MIT License](https://img.shields.io/github/license/lentiancn/docker-gentkit-alpine.svg?style=flat-square&label=license)](LICENSE)
[![GitHub Release](https://img.shields.io/github/tag/lentiancn/docker-gentkit-alpine.svg?style=flat-square&label=release)](https://github.com/lentiancn/docker-gentkit-alpine/releases)

A project for building Docker image based on Alpine Linux .

## Pull and run into a new container

```shell
docker run -it \
--name <your_container_name> \
gentkit/alpine:latest
```

## Exec into your running container

```shell
docker exec -it \
<your_container_name_or_id> \
/bin/sh
```

**NOTE** : Check status and start it using :
**docker ps -a --filter "name=<your_container_name>"** and
**docker start <your_container_name_or_id>**

## License

**gentkit/alpine** is licensed under
the [MIT License](LICENSE) .
