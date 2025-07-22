input = input
output = output

main: sum.l sum.y
	bison -d sum.y 
	flex sum.l 
	gcc sum.tab.c lex.yy.c
	a <$(input)> $(output)