FROM debian:bookworm

# Docker file to check out the environment files 
# and install the tools we need to build


# install some basic tools
RUN apt-get update && apt-get install -y \
    curl \
    git \
    make \
    unzip \
    gcc \
    procps \
    && rm -rf /var/lib/apt/lists/*

# let's install neovim -- latest ARM as that's where we are 
RUN mkdir -p /root/.config/
COPY config/nvim/ /root/.config/nvim/

# install python
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    python3-dev \
    libffi-dev \
    libssl-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# install nodejs
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN node --version
RUN npm --version

# install golang
RUN curl -fsSL https://golang.org/dl/go1.24.1.linux-arm64.tar.gz -o /tmp/go1.24.1.linux-arm64.tar.gz


# install rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN rustc --version
RUN cargo --version

# Run the application.
CMD ["tail", "-f", "/dev/null"]
