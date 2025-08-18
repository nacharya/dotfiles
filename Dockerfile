FROM debian:trixie-slim

# Docker file to check out the environment files 
# and install the tools we need to build


# install some basic tools
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    curl \
    git \
    make \
    unzip \
    gcc \
    procps \
    bash \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/.config/

# install python
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    python3-dev \
    libffi-dev \
    libssl-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# install nodejs
RUN curl -fsSL https://deb.nodesource.com/setup_21.x | bash -
RUN apt-get install -y nodejs
RUN node --version
RUN npm --version

# install google gemini
RUN npm install -g @google/gemini-cli

# let's install neovim, tmux and fish
RUN apt-get install -y tmux neovim fish kubectl kitty


# install golang
RUN apt-get install -y golang
# install rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN rustc --version
RUN cargo --version

RUN mkdir -p /dottest
COPY . /dottest
WORKDIR /dottest
RUN ./dots install base
RUN cat ~/.bash_profile >> ~/.bashrc

# Run the application.
CMD ["tail", "-f", "/dev/null"]
