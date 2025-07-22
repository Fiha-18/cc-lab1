%{
#include <stdio.h>
#include <stdlib.h>
void yyerror(char *s);
int yylex();
%}

%token NUM ADD SUB MUL DIV
%start sum

%%

sum: exp { printf("RESULT = %d\n", $1); }
    ;

exp: exp ADD term { $$ = $1 + $3; }
   | exp SUB term { $$ = $1 - $3; }
   | term         { $$ = $1; }
   ;

term: term MUL NUM { $$ = $1 * $3; }
    | term DIV NUM { $$ = $1 / $3; }
    | NUM          { $$ = $1; }
    ;

%%

void yyerror(char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    yyparse();
    printf("Parsing Finished\n");
    return 0;
}
