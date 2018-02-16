#!/bin/bash

dirs=$(find . -mindepth 1 -maxdepth 1 -type d)

for d in ${dirs[@]};do
    cd $d
    [[ -d trunk ]] && mkdir -v trunk
    mv -v * trunk/
    cd ..
done
