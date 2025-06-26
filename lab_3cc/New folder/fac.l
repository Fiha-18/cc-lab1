%option noyywrap

%{
#include <stdio.h>
%}

/* Definitions */
digit   [0-9]
id      [a-zA-Z_][a-zA-Z0-9_]*
ws      [ \t\r\n]

%%

"int"       { printf("%s -> TYPE\n", yytext); }
"for"       { printf("%s -> FOR\n", yytext); }
"return"    { printf("%s -> RETURN\n", yytext); }

{id}        { printf("%s -> ID\n", yytext); }
{digit}+    { printf("%s -> NUM\n", yytext); }

"="         { printf("%s -> ASSIGN\n", yytext); }
"++"        { printf("%s -> INCREMENT\n", yytext); }
"<="        { printf("%s -> LTE\n", yytext); }
">="        { printf("%s -> GTE\n", yytext); }
"<"         { printf("%s -> LT\n", yytext); }
">"         { printf("%s -> GT\n", yytext); }

"+"         { printf("%s -> ADD\n", yytext); }
"-"         { printf("%s -> SUB\n", yytext); }
"*"         { printf("%s -> MUL\n", yytext); }
"/"         { printf("%s -> DIV\n", yytext); }
"%"         { printf("%s -> MOD\n", yytext); }

"("         { printf("%s -> LP\n", yytext); }
")"         { printf("%s -> RP\n", yytext); }
"{"         { printf("%s -> LB\n", yytext); }
"}"         { printf("%s -> RB\n", yytext); }
";"         { printf("%s -> SEMI\n", yytext); }
","         { printf("%s -> COMMA\n", yytext); }

{ws}        { /* skip whitespace */ }
.           { printf("%s -> UNKNOWN\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}
