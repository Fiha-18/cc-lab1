input = input.txt
output = output.txt

main: do.l do.y
	bison -d do.y
	flex do.l
	gcc do.tab.c lex.yy.c -o do_calc
	./do_calc < $(input) > $(output)