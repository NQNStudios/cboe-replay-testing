#! /bin/bash

old_pwd="$(pwd)"
cd "./cboe/build/Blades of Exile/"
if [ "$(uname)" == "Darwin" ]; then
    cd "Blades of Exile.app/Contents/MacOS/"
    boe="./Blades of Exile"
fi

"$boe" $@

cd "$old_pwd"