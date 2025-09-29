# tanka_x64

Assembly Language Tanka（"アセンブラ短歌"）in x86_64 environment (GAS)

## Environment

- WSL2 (Ubuntu 22.04.05 LTS)
- GCC 11.4.0
- GNU objdump 2.38
- GNU Make 4.3

## Tanka

Souce files are in `src/`.

- `fibonacci_func/fibonacci.S`: calculate Fibonacci sequence
- `add2.S`: add 2 integers
- `echo.S`: print a commandline argument (`argv[1]`)
- `loop.S`: loop for the number of commandline argument (`argc`)
- `waka.S`: print "Waka"
- `wakayama.S`: print "Wakayama"

## References

- [アセンブラ短歌](https://kozos.jp/asm-tanka/)
- [31バイトでつくるアセンブラプログラミング アセンブラ短歌の世界](https://book.mynavi.jp/ec/products/detail/id=24267)
