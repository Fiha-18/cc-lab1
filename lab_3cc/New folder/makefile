input = input
output = output.txt

main:
	flex fac.l
	gcc lex.yy.c
	./a.exe <input> output txt

main2:
	bison -d cal2.y
	flex cal2.l
	gcc cal2.tab.c lex.yy.c
	a < $(input) > $(output) #./a < $(input) > $(output)