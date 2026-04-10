# Alpine Linux on Docker

[![MIT License](https://img.shields.io/github/license/lentiancn/dockerhub-gentkit-alpine?style=flat-square)](LICENSE)
[![GitHub Release](https://img.shields.io/github/tag/lentiancn/dockerhub-gentkit-alpine.svg?label=release)](https://github.com/lentiancn/dockerhub-gentkit-alpine/releases)

A project for building Docker image based on the 'alpine' base image.

## Pull and run a new container

```shell
$ sudo docker run -d \
--restart unless-stopped \
--name <your_container_name> \
gentkit/alpine:latest
```

## Exec into the container

```shell
# View container status
$ sudo docker ps -a --filter "name=<your_container_name>"

$ sudo docker exec -it <your_container_name or your_container_id> /bin/sh
```

## License

**gentkit/alpine** is licensed under
the [MIT License](https://raw.githubusercontent.com/lentiancn/dockerhub-gentkit-alpine/refs/heads/main/LICENSE) .

## Appendix

### Source

https://github.com/lentiancn/dockerhub-gentkit-alpine (**on** GitHub)

https://gitee.com/lentiancn/dockerhub-gentkit-alpine (**on** Gitee)
