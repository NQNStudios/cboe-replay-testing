#! /bin/bash

if [ -d cboe/.git ]; then
    rm -rf cboe/.git
elif [ -e cboe/.git ]; then
    mv cboe/.git cboe/.git.tmp
fi

cp -r .git cboe/.git
if [ "$(uname)" == "Darwin" ]; then
    (cd cboe && scons debug=true game=true)
fi
rm -rf cboe/.git
mv cboe/.git.tmp cboe/.git

scenario_dir=""
if [ "$(uname)" == "Darwin" ]; then
    scenario_dir="$HOME/Library/Application Support/Blades of Exile/Scenarios"
fi

scenarios=scenarios/*
for scen in $scenarios; do
    flags=""
    if [ -d "$scen" ]; then
        flags="-r"
    fi
    cp $flags "$scen" "$scenario_dir"
done