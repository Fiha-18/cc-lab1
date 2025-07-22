input = input.txt
output = output.txt

main: sum.l sum.y
	bison -d sum.y
	flex sum.l
	gcc sum.tab.c lex.yy.c -o myparser
	./myparser < $(input) > $(output)