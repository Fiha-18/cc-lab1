%option noyywrap

%{
#include "sum.tab.h"
#include <stdlib.h>
%}

digit  [0-9]
number ({digit}+)
ws     [ \t\n]+

%%

{ws}              {/* skip whitespace */}
{number}          { yylval = atoi(yytext); return NUM; }
"+"               { return ADD; }
"-"               { return SUB; }
"*"               { return MUL; }
"/"               { return DIV; }

.                 { printf("Unrecognized char: %s\n", yytext); return -1; }

%%

