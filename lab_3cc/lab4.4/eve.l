%option noyywrap
%{
#include <stdio.h>
%}

digit   [0-9]+
id      [a-zA-Z_][a-zA-Z0-9_]*
ws      [ \t\r\n]+

%%

"int"       { printf("%s -> TYPE\n", yytext); }
"if"        { printf("%s -> IF\n", yytext); }
"return"    { printf("%s -> RETURN\n", yytext); }
"=="        { printf("%s -> EQ\n", yytext); }
"="         { printf("%s -> ASSIGN\n", yytext); }
";"         { printf("%s -> SEMI\n", yytext); }
"("         { printf("%s -> LP\n", yytext); }
")"         { printf("%s -> RP\n", yytext); }
"{"         { printf("%s -> LB\n", yytext); }
"}"         { printf("%s -> RB\n", yytext); }

{digit}     { printf("%s -> NUM\n", yytext); }
{id}        { printf("%s -> ID\n", yytext); }
{ws}        { /* ignore whitespace */ }
.           { printf("%s -> UNKNOWN\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}
