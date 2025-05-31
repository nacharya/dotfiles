#/bin/bash

if [ -d ~/.local/share/nvim ]; then
    echo "Removing ~/.local/share/nvim"
    rm -rf ~/.local/share/nvim
fi

if [ -d ~/.local/state/nvim ]; then
    echo "Removing ~/.local/state/nvim"
    rm -rf ~/.local/state/nvim
fi

if [ -d ~/.cache/nvim ]; then
    echo "Removing ~/cache/nvim"
    rm -rf ~/.cache/nvim
fi



