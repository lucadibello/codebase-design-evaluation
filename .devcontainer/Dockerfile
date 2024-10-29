FROM amazoncorretto:17-alpine-jdk

# Install required packages
RUN apk add --no-cache bash curl tar gzip tmux git maven gradle eudev-dev

# Install support for some languages (needed by neovim)
RUN apk add --no-cache python3 py3-pip nodejs npm ripgrep fzf rust cargo go perl

# Install some additional build tools 
RUN apk add --no-cache build-base libtool autoconf automake cmake gettext gettext-dev gcc g++

# Install Neovim from source
RUN git clone https://github.com/neovim/neovim /tmp/neovim && \
  cd /tmp/neovim && \
  git checkout stable && \
  make CMAKE_BUILD_TYPE=Release && \
  make install && \
  rm -rf /tmp/neovim

# Set useful environment variables
ENV JAVA_VERSION=17
ENV JAVA_VENDOR=corretto

# Set workdir
WORKDIR /workspace
