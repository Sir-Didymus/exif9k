# Compiler
CC = gcc
# Compiler flags
CFLAGS = -Wall -Wextra -std=c11
# Directories
SRC_DIR = src
BUILD_DIR = build
# Executable name
TARGET = $(BUILD_DIR)/exif9k
# Source files
SRCS = $(wildcard $(SRC_DIR)/*.c)
# Object files (replace src/*.c with build/*.o)
OBJS = $(patsubst $(SRC_DIR)/%.c, $(BUILD_DIR)/%.o, $(SRCS))

# Default Target: Build the program by linking the object files
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS)

# Compile source files into object files
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Ensure build directory exists
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Clean up generated files
clean:
	rm -rf $(BUILD_DIR)
