# Alpine Linux on Docker

A project for building Docker image based on Alpine Linux .

## Supported tags

| Format   | Example  | Description           |
|----------|----------|-----------------------|
| `latest` | `latest` | Latest stable version |
| `X`      | `3`      | Major version only    |
| `X.Y`    | `3.23`   | Major & minor version |
| `X.Y.Z`  | `3.23.4` | Full semantic version |

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
