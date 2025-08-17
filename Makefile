fibonacci: mkd
	gcc ./src/fibonacci/main.c ./src/fibonacci/fibonacci.S -o ./bin/$@
	@objdump -d ./bin/$@ > ./disassembly/$@.d
	@./bin/$@ 8

mkd:
	@mkdir -p ./bin
	@mkdir -p ./disassembly
