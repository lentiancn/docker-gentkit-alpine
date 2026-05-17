# Python on Docker

A project for building Docker images of Python environment .

## Supported tags

### Debian Linux (VARIANT=slim) | [Dockerfile](debian/Dockerfile)

| Tag Format   | Example       | Description                        |
|--------------|---------------|------------------------------------|
| `latest`     | `latest`      | Alias of the latest slim image     |
| `slim`       | `slim`        | Latest Debian slim base image      |
| `X-slim`     | `3-slim`      | Major version only slim variant    |
| `X.Y-slim`   | `3.23-slim`   | Major & minor version slim variant |
| `X.Y.Z-slim` | `3.23.4-slim` | Full semantic version slim variant |

### Alpine Linux (VARIANT=alpine) | [Dockerfile](alpine/Dockerfile)

| Tag Format     | Example         | Description                          |
|----------------|-----------------|--------------------------------------|
| `alpine`       | `alpine`        | Latest Alpine minimal base image     |
| `X-alpine`     | `3-alpine`      | Major version only alpine variant    |
| `X.Y-alpine`   | `3.23-alpine`   | Major & minor version alpine variant |
| `X.Y.Z-alpine` | `3.23.4-alpine` | Full semantic version alpine variant |

## Pull and run into a new container

```shell
docker run -it \
--name <CONTAINER_NAME> \
gentkit/python:<TAG_NAME>
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

**gentkit/python** is licensed under
the [MIT License](../LICENSE) .
