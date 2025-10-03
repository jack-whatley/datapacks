#!/usr/bin/env bash

for d in */ ; do
    if [[ "$d" == ".github" ]]; then
        break
    fi

    cd $d

    echo "Zipping Directory $d"

    zip -r "../${d///}.zip" *

    cd ..
done
