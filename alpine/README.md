# Alpine Linux on Docker

A project for building Docker image based on Alpine Linux .

## Supported tags

| Format   | Description           | Example  |
|----------|-----------------------|----------|
| `latest` | Latest stable version | `latest` |
| `X`      | Major version only    | `3`      |
| `X.Y`    | Major & minor version | `3.23`   |
| `X.Y.Z`  | Full semantic version | `3.23.4` |

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
