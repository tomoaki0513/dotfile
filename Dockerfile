FROM ubuntu:22.04

ENV TZ=Asia/Tokyo
ENV LANG=en_US.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y \
    && apt-get install -y \
    zsh \
    tmux \
    vim \
    git \
    locales \
    apt-transport-https \
    ca-certificates \ ninja-build \
    gettext \
    libtool \
    libtool-bin \
    autoconf \
    automake \
    cmake \
    g++ \
    pkg-config \
    unzip \
    curl \
    doxygen \
    && rm -rf /var/lib/apt/lists/*

RUN locale-gen en_US.UTF-8

ENV USER tnakamura
RUN useradd tnakamura -s /usr/bin/zsh -m -d /home/tnakamura

RUN git clone https://github.com/neovim/neovim /home/tnakamura/neovim-src && \
    cd /home/tnakamura/neovim-src && \
    make CMAKE_INSTALL_PREFIX=/home/tnakamura/.local && \
    make install && \
    rm -rf /home/tnakamura/neovim-src

WORKDIR /home/tnakamura/dotfiles

COPY --chown=tnakamura . .

RUN ./script/init.sh

ENTRYPOINT ["/usr/bin/zsh"]
