#!/bin/bash

if command -v go &>/dev/null; then
  echo "go: $(go version)"
fi
