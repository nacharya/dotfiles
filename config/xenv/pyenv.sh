#!/bin/bash

function pyvers() {
    PYTHON3=$(which python3)
    PYVERS=$(python3 --version)
    echo "python3 : " $PYTHON3 "version" : ${PYVERS}
}


pyvers
if [[ -d "$HOME/.nstd" ]]; then 
    source "$HOME/.nstd/bin/activate"
    echo "Using nstd python environment"
fi
pyvers


