%option noyywrap
%{
#include <stdio.h>
%}

id      [a-zA-Z_][a-zA-Z0-9_]*
digit   [0-9]+
ws      [ \t\r\n]+

%%

"for"       { printf("%s -> FOR\n", yytext); }
"if"        { printf("%s -> IF\n", yytext); }
"else"      { printf("%s -> ELSE\n", yytext); }
"int"       { printf("%s -> TYPE\n", yytext); }

"%"         { printf("%s -> MOD\n", yytext); }      // Changed from "%%" to "%"
"=="        { printf("%s -> EQ\n", yytext); }
"="         { printf("%s -> ASSIGN\n", yytext); }
";"         { printf("%s -> SEMI\n", yytext); }
"("         { printf("%s -> LP\n", yytext); }
")"         { printf("%s -> RP\n", yytext); }
","         { printf("%s -> COMMA\n", yytext); }
"<"         { printf("%s -> LT\n", yytext); }
">"         { printf("%s -> GT\n", yytext); }
"+"         { printf("%s -> ADD\n", yytext); }
"-"         { printf("%s -> SUB\n", yytext); }
"++"        { printf("%s -> INCREMENT\n", yytext); }

{digit}     { printf("%s -> NUM\n", yytext); }
{id}        { printf("%s -> ID\n", yytext); }
{ws}        { /* skip whitespace */ }
.           { printf("%s -> UNKNOWN\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}
