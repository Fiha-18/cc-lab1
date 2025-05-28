# Compiler and flags
CC = gcc
CFLAGS = -I. -mconsole     # Include current directory headers and compile as console app
DEPS = hellomake.h
OBJS = hellomake.o hellofunc.o

# Default target to compile and analyze found.c
all:
	$(CC) $(CFLAGS) -o found found.c              # Compile found.c to executable
	$(CC) -E found.c > found.i                    # Preprocess to found.i
	$(CC) -S -masm=intel found.i                  # Generate assembly in Intel syntax -> found.s
	as -o found.o found.s                         # Assemble to object file
	objdump -M intel -d found.o > found1.dump    # Dump disassembly of .s-built object
	$(CC) -c -o found.o found.c                   # Compile found.c to object (via compiler)
	objdump -M intel -d found.o > found2.dump    # Dump disassembly of .c-built object
	$(CC) $(CFLAGS) found.o -o found              # Link object file to executable (with -mconsole)

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
	del /Q *.o *.i *.s *.dump found.exe hellomake.exe 2>NUL

# Optional assembler task using MASM (Windows only, make sure files exist)
assembler:
	"C:\masm32\bin\ml" /c /coff /Cp prog1.asm
	"C:\masm32\bin\link" -entry:main /subsystem:console prog1.obj
	prog1
