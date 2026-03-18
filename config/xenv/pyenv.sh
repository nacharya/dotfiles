#!/bin/bash

if ! command -v python3 &>/dev/null; then
  return
fi

# Activate project virtualenv if present
if [ -d "$HOME/.nstd" ]; then
  source "$HOME/.nstd/bin/activate"
  echo "python: $(python3 --version) [nstd env active]"
else
  echo "python: $(python3 --version)"
fi
