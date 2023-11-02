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

## Packages

The following packages are installed on top of the base image for our needs.

- **[python](https://www.python.org)** for the automarking.py script for automated lab marking
- **[git](https://git-scm.com)** to merge students' submission branches into our marking branches
- **[procps](https://www.linux.co.cr/ldp/lfs/appendixa/procps.html)** for utilities such as [ps](https://man7.org/linux/man-pages/man1/ps.1.html) and [pkill](https://linux.die.net/man/1/pkill) needed to automarking server-based lab exercises
- **[net-tools](https://net-tools.sourceforge.io)** for the [netstat](https://linux.die.net/man/8/netstat) utility used by [sync-dev-server](https://github.com/nktnet1/sync-dev-server)
- **[ca-certificates](https://packages.debian.org/bullseye/ca-certificates)** necessary for [sync-request-curl](https://github.com/nktnet1/sync-request-curl) to download images

## Bugs/issues

- tam.nguyen1@unsw.edu.au
- cs1531@cse.unsw.edu.au
