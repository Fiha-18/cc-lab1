# To clean and build, run these in terminal:
# mingw32-make clean
# mingw32-make

# Compiler and flags
CC = gcc
CFLAGS = -I. -mconsole     # Include current directory headers and ensure console app
DEPS = hellomake.h
OBJS = hellomake.o hellofunc.o

# Default target to compile and analyze for.c
all:
	$(CC) -o for for.c -mconsole              # Compile for.c to executable
	$(CC) -E for.c > for.i                    # Preprocess to for.i
	$(CC) -S -masm=intel for.i                # Generate assembly in Intel syntax -> for.s
	as -o for.o for.s                         # Assemble to object file
	objdump -M intel -d for.o > for1.dump     # Dump disassembly of .s-built object
	$(CC) -c -o for.o for.c $(CFLAGS)         # Compile for.c to object (via compiler)
	objdump -M intel -d for.o > for2.dump     # Dump disassembly of .c-built object

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
	del /Q *.o *.i *.s *.dump for.exe hellomake.exe 2>NUL

# Optional assembler task using MASM (Windows only, make sure files exist)
assembler:
	"C:\masm32\bin\ml" /c /coff /Cp prog1.asm
	"C:\masm32\bin\link" -entry:main /subsystem:console prog1.obj
	prog1
