input = input.txt
output = output.txt

main: case.l case.y
	bison -d case.y
	flex case.l
	gcc case.tab.c lex.yy.c -o case_calc
	./case_calc < $(input) > $(output)




