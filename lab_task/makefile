# Compiler and flags
CC = gcc
CFLAGS = -I. -mconsole     # Include current directory headers and compile as console app

# Default target to compile and analyze sm.c
all:
	$(CC) $(CFLAGS) -o sm sm.c            # Compile sm.c to executable sm
	$(CC) -E sm.c > sm.i                  # Preprocess sm.c to sm.i
	$(CC) -S -masm=intel sm.i             # Generate assembly (Intel syntax) sm.s
	# Optionally assemble manually (uncomment if needed)
	# as -o sm.o sm.s
	# objdump -M intel -d sm.o > sm1.dump
	$(CC) -c -o sm.o sm.c                 # Compile sm.c to object file sm.o
	objdump -M intel -d sm.o > sm2.dump   # Disassemble the object file

# Pattern rule to compile .c to .o
%.o: %.c
	$(CC) -c -o $@ $< $(CFLAGS)

.PHONY: clean

clean:
	del /Q *.o *.i *.s *.dump sm.exe 2>NUL





