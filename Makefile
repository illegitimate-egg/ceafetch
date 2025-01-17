

BUILD_DIR := build
SRC_DIR := src

BUILD_CMD := gcc -o $(BUILD_DIR)/ceafetch $(SRC_DIR)/ceafetch.c $(SRC_DIR)/libs/stringEx.c


ifeq ($(OS),Windows_NT)
$(BUILD_DIR)/ceafetch.exe: $(SRC_DIR)/ceafetch.c $(BUILD_DIR)
	$(BUILD_CMD)
else
$(BUILD_DIR)/ceafetch: $(SRC_DIR)/ceafetch.c $(BUILD_DIR)
	$(BUILD_CMD)

endif

$(BUILD_DIR):
	mkdir $(BUILD_DIR)

run:
	@./$(BUILD_DIR)/./ceafetch
