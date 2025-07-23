%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(char *s);
int yylex();

unsigned long long factorial(int n) {
    if (n < 0) return 0;
    if (n == 0 || n == 1) return 1;
    return n * factorial(n -1);
}
%}

%token NUM
%start input

%%

input:
    NUM {
        switch ($1) {
            case 0:
                printf("Factorial of 0 = 1\n");
                break;
            case 1:
                printf("Factorial of 1 = 1\n");
                break;
            case 5:
                printf("Factorial of 5 = 120 (precomputed)\n");
                break;
            default:
                printf("Factorial of %d = %llu\n", $1, factorial($1));
        }
    }
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

