%option noyywrap nodefault yylineno
%{
#include <stdio.h>
#include "token.h"
%}

%%

[ \t]                   ; // Ignorar espaços em branco e tabs
[0-9]+                  { printf("constante decimal: %s\n", yytext); return NUMBER; }
"+"                     { printf("codigo do token: %d\n", PLUS); return PLUS; }
"-"                     { printf("codigo do token: %d\n", MINUS); return MINUS; }
"*"                     { printf("codigo do token: %d\n", TIMES); return TIMES; }
"/"                     { printf("codigo do token: %d\n", DIV); return DIV; }
"\n"                    { printf("codigo do token: %d\n", EOL); return EOL; }
.                       { printf("Erro léxico: Caractere não reconhecido '%s'\n", yytext); return ERROR; }

%%

