SRC_DIR = ./src
BIN_DIR = ./bin
ASM_DIR = ./disassembly

fibonacci_func: $(BIN_DIR) $(ASM_DIR)
	gcc $(SRC_DIR)/$@/main.c $(SRC_DIR)/$@/fibonacci.S -o $(BIN_DIR)/$@
	@objdump -d $(BIN_DIR)/$@ > $(ASM_DIR)/$@.d
	@$(BIN_DIR)/$@ 8

$(BIN_DIR):
	@mkdir -p $(BIN_DIR)

$(ASM_DIR):
	@mkdir -p $(ASM_DIR)
