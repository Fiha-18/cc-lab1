%option noyywrap

%{
#include "do.tab.h"  // token definitions from Bison
#include <stdlib.h>
%}

digit  [0-9]
number ({digit}+)
ws     [ \t\n]+

%%

{ws}           {/* skip whitespace */}
{number}       { yylval = atoi(yytext); return NUM; }

.              { return yytext[0]; }  // handle unknown characters