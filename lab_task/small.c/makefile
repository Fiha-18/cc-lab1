# Compiler and flags
CC = gcc
CFLAGS = -I. -mconsole     # Include current directory headers and ensure console app
DEPS = hellomake.h
OBJS = hellomake.o hellofunc.o

# Default target to compile and analyze bg.c
all:
	$(CC) $(CFLAGS) -o sm sm.c              # Compile bg.c to executable
	$(CC) -E sm.c > sm.i                    # Preprocess to bg.i
	$(CC) -S -masm=intel sm.i               # Generate assembly in Intel syntax -> bg.s
	as -o sm.o sm.s                         # Assemble to object file
	objdump -M intel -d sm.o > sm1.dump     # Dump disassembly of .s-built object
	$(CC) -c -o sm.o sm.c                   # Compile bg.c to object (via compiler)
	objdump -M intel -d sm.o > sm2.dump     # Dump disassembly of .c-built object

# Compile directly from C source files
hellomake: hellomake.c hellofunc.c
	$(CC) -o hellomake hellomake.c hellofunc.c $(CFLAGS)

# Use precompiled object files
hellomake2: hellomake.o hellofunc.o
	$(CC) -o hellomake hellomake.o hellofunc.o $(CFLAGS)

# Use pattern-based object list
hellomake3: $(OBJS)
	$(CC) -o $@ $^ $(CFLAGS)

# Pattern rule to compile .c to .o
%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

.PHONY: clean

# Clean up object files
clean:
	del /Q *.o *.i *.s *.dump bg.exe hellomake.exe 2>NUL

# Optional assembler task using MASM (Windows only, make sure files exist)
assembler:
	"C:\masm32\bin\ml" /c /coff /Cp prog1.asm
	"C:\masm32\bin\link" -entry:main /subsystem:console prog1.obj
	prog1