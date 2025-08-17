#!/bin/bash

RUSTCBIN=$(which rustc)
CARGO=$(which cargo)

echo "rustc " $(rustc --version) " cargo: " $(cargo --version)
