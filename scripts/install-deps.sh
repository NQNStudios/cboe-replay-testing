#! /bin/bash

git submodule update --init --recursive

if [ "$(uname)" == "Darwin" ]; then
    brew install boost
    brew install sfml
fi