FROM amazoncorretto:17-alpine3.19

# Install required packages

RUN apk add --no-cache bash curl tar gzip tmux git maven gradle eudev-dev openssh
# Install support for some languages (needed by neovim)
RUN apk add --no-cache python3 py3-pip nodejs npm rust cargo go perl

# Install some additional build tools 
RUN apk add --no-cache build-base libtool autoconf automake cmake gettext gettext-dev gcc g++

# Install Neovim from source
RUN git clone https://github.com/neovim/neovim /tmp/neovim && \
  cd /tmp/neovim && \
  git checkout stable && \
  make CMAKE_BUILD_TYPE=Release && \
  make install && \
  rm -rf /tmp/neovim

# Install additional tools needed by nvim
RUN apk add --no-cache ripgrep fzf lazygit

# Install tmux plugin manager
RUN git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
RUN TMUX_PLUGIN_MANAGER_PATH=/root/.tmux/plugins/tpm ~/.tmux/plugins/tpm/bin/install_plugins

# Generate new SSH key for the container (will be the repo deploy key)
RUN ssh-keygen -t ed25519 -f /root/.ssh/id_ed25519 -N ""

# Print the publc key to the console for easy copy-paste
RUN cat /root/.ssh/id_ed25519.pub

# Set workdir
WORKDIR /workspace
