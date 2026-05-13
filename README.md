# docker-gentkit-images

[![MIT License](https://img.shields.io/github/license/lentiancn/docker-gentkit-images.svg?style=flat-square&label=license)](LICENSE)

Maintain the source code files of all GentKit Docker images .

| Images           | Description |
|------------------|-------------|
| gentkit/alpine   | -           |
| gentkit/python   | -           |
| gentkit/java     | -           |
| gentkit/node     | -           |
| gentkit/openclaw | -           |
| gentkit/searxng  | -           |

## Pull and run into a new container

```shell
docker run -it \
--name <CONTAINER_NAME> \
gentkit/alpine:<TAG_NAME>
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

**docker-gentkit-images/*** is licensed under
the [MIT License](LICENSE) .
