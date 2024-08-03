#! /bin/bash

git submodule update --init --recursive

if [ "$(uname)" == "Darwin" ]; then
    brew install boost
    brew install sfml
elif [[ $(uname) == *"MINGW"* ]]; then
    vcpkg install --triplet=x64-windows zlib sfml opengl boost-any boost-dynamic-bitset boost-ptr-container boost-core boost-filesystem boost-system boost-date-time boost-chrono boost-math boost-spirit
fi