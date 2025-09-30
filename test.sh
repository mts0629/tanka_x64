#!/bin/bash -e

bin_dir=./bin
dasm_dir=./disassembly

test_src_files() {
    srcs=$1
    args=$2
    dname=$3

    target=${bin_dir}/${dname}

    gcc ${srcs} -o ${target} && \
    ${target} ${args} && \
    objdump -d ${target} > ${dasm_dir}/${dname}.d
}

test_asm_file() {
    src=$1
    args=$2
    fname=$3

    fname=$(basename ${src/.S/})
    target=${bin_dir}/${fname}

    gcc ${src} -o ${target} && \
    ${target} ${args} && \
    objdump -d ${target} > ${dasm_dir}/${fname}.d
}

run_test() {
    src=$1
    args=$2

    mkdir -p ${bin_dir}
    mkdir -p ${dasm_dir}

    if [ -d ${src} ]; then
        srcs=$(find ${src} -type f)
        dname=$(basename ${src})
        test_src_files "${srcs}" "${args}" ${dname}
    else
        test_asm_file ${src} "${args}"
    fi
}

run_test $1 "$2"
