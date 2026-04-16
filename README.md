# Alpine Linux on Docker

[![MIT License](https://img.shields.io/github/license/lentiancn/docker-gentkit-alpine?style=flat-square)](LICENSE)
[![GitHub Release](https://img.shields.io/github/tag/lentiancn/docker-gentkit-alpine.svg?label=release)](https://github.com/lentiancn/docker-gentkit-alpine/releases)

A project for building Docker image based on Alpine Linux.

## Pull and run into a new container

```shell
$ sudo docker run -it \
--name <your_container_name> \
gentkit/alpine:latest
```

## Exec into the container

```shell
# View container status. First run [sudo docker start <your_container_name_or_your_container_id>] if its status is not Up.
$ sudo docker ps -a --filter "name=<your_container_name>"

$ sudo docker exec -it <your_container_name or your_container_id> /bin/sh
```

## License

**gentkit/alpine** is licensed under
the [MIT License](LICENSE) .
