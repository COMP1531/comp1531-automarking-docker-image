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
