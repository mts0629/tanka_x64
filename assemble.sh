#!/bin/bash -eu

assemble() {
    src=$1

    fname=$(basename ${src/.S/})

    mkdir -p ./bin
    mkdir -p ./disassembly

    gcc ${src} -o ./bin/${fname} && \
    ./bin/${fname} && \
    objdump -d ./bin/${fname} > ./disassembly/${fname}.d
}

assemble $1
