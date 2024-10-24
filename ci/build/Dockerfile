FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    zip \
    git \
    curl \
    bash \
    luarocks \
    && luarocks install luacheck

WORKDIR /app

CMD ["bash"]
