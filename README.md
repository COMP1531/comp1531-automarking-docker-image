# comp1531/automarking

Base image for [COMP1531](https://webcms3.cse.unsw.edu.au/COMP1531/23T2/outline) Gitlab runners.

- Docker Hub: https://hub.docker.com/r/comp1531/automarking
- Github: https://github.com/nktnet1/comp1531-automarking-docker-image

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

- **[python](https://www.python.org)** for the automarking.py script used for automated lab marking
- **[git](https://git-scm.com)** to merge student submission branches into staff marking branches
- **[procps](https://www.linux.co.cr/ldp/lfs/appendixa/procps.html)** for utilities such as [ps](https://man7.org/linux/man-pages/man1/ps.1.html) and [pkill](https://linux.die.net/man/1/pkill) needed in server-based lab pipelines
- **[net-tools](https://net-tools.sourceforge.io)** for the [netstat](https://linux.die.net/man/8/netstat) utility used by [sync-dev-server](https://github.com/nktnet1/sync-dev-server) npm package
- **[ca-certificates](https://packages.debian.org/bullseye/ca-certificates)** necessary for [sync-request-curl](https://github.com/nktnet1/sync-request-curl) to download images

## Bugs/issues

- tam.nguyen1@unsw.edu.au
- cs1531@cse.unsw.edu.au
