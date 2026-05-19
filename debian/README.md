# Debian Linux on Docker

A project for building Docker image based on Debian Linux .

## Supported tags

`gentkit/debian`:<TAG_NAME>

[Dockerfile](Dockerfile)

### Debian 12 Bookworm

| base TAG_NAME     | TAG_NAME                                    |
|-------------------|---------------------------------------------|
| `12.<MINOR>`      | `12.<MINOR>` `12` `bookworm`                |
| `12.<MINOR>-slim` | `12.<MINOR>-slim` `12-slim` `bookworm-slim` |

**NOTE** : Replace `12.<MINOR>` with actual version number from https://www.debian.org/releases/bookworm/, e.g. 12.13

### Debian 13 Trixie

| base TAG_NAME     | TAG_NAME                                                  |
|-------------------|-----------------------------------------------------------|
| `13.<MINOR>`      | `13.<MINOR>` `13` `trixie`                                |
| `13.<MINOR>-slim` | `13.<MINOR>-slim` `13-slim` `trixie-slim` `slim` `latest` |

**NOTE** : Replace `13.<MINOR>` with actual version number from https://www.debian.org/releases/trixie/, e.g. 13.4

## Pull and run into a new container

```shell
docker run -it \
--name <CONTAINER_NAME> \
gentkit/debian:<TAG_NAME>
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

**gentkit/debian** is licensed under
the [MIT License](LICENSE) .
