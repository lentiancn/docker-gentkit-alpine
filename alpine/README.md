# Alpine Linux on Docker

A project for building Docker image based on Alpine Linux .

## Supported tags

| Format | Tags     |
|--------|----------|
| latest | `latest` |
| X      | `3`      |
| X.Y    | `3.23`   |
| X.Y.Z  | `3.23.4` |

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

**gentkit/alpine** is licensed under
the [MIT License](../LICENSE) .
