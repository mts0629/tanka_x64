# tanka_x64

Assembly Language Tanka（"アセンブラ短歌"）in x86_64 environment (GAS)

## Environment

- WSL2 (Ubuntu 22.04.05 LTS)
- GCC 11.4.0
- GNU objdump 2.38
- GNU Make 4.3

## Tanka

Souce files are in `src/`.

- `fibonacci_func/fibonacci.S`: calculate Fibonacci sequence till N-th term
    - `$ fibonacci_func <N>`
- `add2.S`: add 2 integers (only 1-digit)
    - Input (interactive): `<Num1[0-9]><Num2[0-9]>`
    - Result must be 1-digit (0-9)
- `echo.S`: print the first commandline argument (`argv[1]`)
    - `$ echo <string>`
- `loop.S`: print "hey" in the loop for the number of commandline argument (`argc`)
    - `$ loop <any arguments> ...`
- `shell.S`: launch `/bin/sh`
- `waka.S`: print "Waka"
- `wakayama.S`: print "Wakayama"

## Test

Build and run with `test.sh`.

```bash
$ ./test.sh <path/to/asm/file> "[arguments]" # From 1 asm src
$ ./test.sh <path/to/src/dir> "[arguments]"  # From asm + C src
```

## References

- [アセンブラ短歌](https://kozos.jp/asm-tanka/)
- [31バイトでつくるアセンブラプログラミング アセンブラ短歌の世界](https://book.mynavi.jp/ec/products/detail/id=24267)
