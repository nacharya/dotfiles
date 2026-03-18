#!/bin/bash

# Add cargo binaries to PATH
if [ -d "$HOME/.cargo/bin" ]; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi

if command -v rustc &>/dev/null; then
  echo "rust: $(rustc --version) | cargo: $(cargo --version)"
fi
