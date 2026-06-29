FROM node:24-trixie-slim

RUN apt-get update -y &&            \
    apt-get install -y              \
        python3                     \
        git                         \
        procps                      \
        net-tools                   \
        ca-certificates &&          \
    rm -rf /var/lib/apt/lists/* &&  \
    npm install -g npm@11.13.0

CMD ["/bin/bash"]
