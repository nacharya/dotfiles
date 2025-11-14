#!/bin/bash

if [ ! -d ~/.config/nvim/pack/github/start ]; then
  mkdir -p ~/.config/nvim/pack/github/start
  git clone --depth=1 https://github.com/github/copilot.vim.git \
        ~/.config/nvim/pack/github/start/copilot.vim
  echo "GitHub Copilot plugin installed for Neovim."
  echo "Goto Neovim and run :Copilot setup to complete the setup."
fi
