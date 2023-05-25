# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall

# Target executable
TARGET = spack_sample

# Source files
SRC = helloworld.c

# Default target
all: $(TARGET)

# Compile the source file into an object file
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Link the object files into the target executable
$(TARGET): $(SRC:.c=.o)
	$(CC) $(CFLAGS) $^ -o $@

# Clean up the compiled files
clean:
	rm -f $(SRC:.c=.o) $(TARGET)

