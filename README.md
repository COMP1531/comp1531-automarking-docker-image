# comp1531/automarking

Base image for COMP1531 Gitlab runners.

- Github: https://github.com/nktnet1/comp1531-automarking-docker-image
- Docker: https://hub.docker.com/repository/docker/comp1531/automarking/general

## Dockerfile

```dockerfile
FROM node:18-bullseye-slim

RUN apt-get update -y &&            \
    apt-get install -y              \
        python3                     \
        git                         \
        procps                      \
        net-tools                   \
        ca-certificates &&          \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
```

## Bugs/issues

tam.nguyen1@unsw.edu.au