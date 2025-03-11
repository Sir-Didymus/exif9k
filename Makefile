# Compiler
CC = gcc
# Compiler flags
CFLAGS = -Wall -Wextra -std=c11
# Executable name
TARGET = exif9k
# Source files
SRCS = main.c rename.c
# Object files
OBJS = $(SRCS:.c=.o)

# Default Target: Build the program by linking the object files
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# Compile source files into object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up generated files
clean:
	rm -f $(OBJS) $(TARGET)
