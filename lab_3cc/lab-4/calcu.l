%option noyywrap

%{
#include <stdio.h>
%}

digit       [0-9]
letter      [a-zA-Z]
under       [_]
id          ({letter}|{under})({letter}|{under}|{digit})*
float       {digit}+"."{digit}+
number      {digit}+
ws          [ \t\r\n]

%%

{id}        { printf("%s -> ID\n", yytext); }
{float}     { printf("%s -> FLOAT\n", yytext); }
{number}    { printf("%s -> NUM\n", yytext); }
"+"         { printf("%s -> ADD\n", yytext); }
"-"         { printf("%s -> SUB\n", yytext); }
"*"         { printf("%s -> MUL\n", yytext); }
"/"         { printf("%s -> DIV\n", yytext); }
"="         { printf("%s -> ASSIGN\n", yytext); }
{ws}        { /* skip whitespace */ }
.           { printf("%s -> UNKNOWN\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}
