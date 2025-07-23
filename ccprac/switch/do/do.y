%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(char *s);
int yylex();
%}

%token NUM
%start input

%%

input:
    /* no tokens from input, logic entirely in C */
    {
        int i = 0, num, sum = 0;

        printf("Enter 5 numbers:\n");

        do {
            if (yylex() != NUM) {
                yyerror("Expected a number");
                YYABORT;
            }
            num = yylval;
            sum += num;
            i++;
        } while (i < 5);

        if (sum == 50) {
            printf("✅ The sum is 50\n");
        } else {
            printf("❌ The sum is %d, not equal to 50\n", sum);
        }
    }
;

%%

void yyerror(char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    return yyparse();
}
