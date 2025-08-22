#!/bin/bash -e

assemble() {
    src=$1
    args=$2

    fname=$(basename ${src/.S/})

    mkdir -p ./bin
    mkdir -p ./disassembly

    gcc ${src} -o ./bin/${fname} && \
    ./bin/${fname} ${args} && \
    objdump -d ./bin/${fname} > ./disassembly/${fname}.d
}

assemble $1 "$2"
