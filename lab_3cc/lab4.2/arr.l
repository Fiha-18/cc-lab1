%option noyywrap

%{
#include <stdio.h>
%}

digit   [0-9]
id      [a-zA-Z_][a-zA-Z0-9_]*
ws      [ \t\r\n]

%%

"int"       { printf("%s -> TYPE\n", yytext); }
"for"       { printf("%s -> FOR\n", yytext); }
"id"        { printf("%s -> ID\n", yytext); }
"{digit}+"  { printf("%s -> NUM\n", yytext); }
"="         { printf("%s -> ASSIGN\n", yytext); }
"+"         { printf("%s -> ADD\n", yytext); }
"<"         { printf("%s -> LT\n", yytext); }
"++"        { printf("%s -> INCREMENT\n", yytext); }
"["         { printf("%s -> LBRACKET\n", yytext); }
"]"         { printf("%s -> RBRACKET\n", yytext); }
";"         { printf("%s -> SEMI\n", yytext); }
","         { printf("%s -> COMMA\n", yytext); }
"("         { printf("%s -> LP\n", yytext); }
")"         { printf("%s -> RP\n", yytext); }
{ws}        { /* skip whitespace */ }
.           { printf("%s -> UNKNOWN\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}
