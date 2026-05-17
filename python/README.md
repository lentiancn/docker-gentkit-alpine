# Python on Docker

A project for building Docker images of Python environment .

## Supported tags

### Debian Linux (VARIANT=slim) | [Dockerfile](debian/Dockerfile)

| Format       | Description                                | Example       |
|--------------|--------------------------------------------|---------------|
| `latest`     | Alias of the latest `slim` image           | `latest`      |
| `slim`       | Latest Debian slim base image              | `slim`        |
| `X-slim`     | Major version only, Debian slim variant    | `3-slim`      |
| `X.Y-slim`   | Major & minor version, Debian slim variant | `3.23-slim`   |
| `X.Y.Z-slim` | Full semantic version, Debian slim variant | `3.23.4-slim` |

### Alpine Linux (VARIANT=alpine) | [Dockerfile](alpine/Dockerfile)

| Format         | Description                           | Example         |
|----------------|---------------------------------------|-----------------|
| `alpine`       | Latest Alpine minimal base image      | `alpine`        |
| `X-alpine`     | Major version only, Alpine variant    | `3-alpine`      |
| `X.Y-alpine`   | Major & minor version, Alpine variant | `3.23-alpine`   |
| `X.Y.Z-alpine` | Full semantic version, Alpine variant | `3.23.4-alpine` |

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
