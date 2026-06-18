%{
#include <stdio.h>
%}

%%

[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+   { printf("VALID EMAIL: %s\n", yytext); }
01[0-9]{9}                               { printf("VALID PHONE: %s\n", yytext); }
\+880[0-9]{10}                           { printf("VALID PHONE: %s\n", yytext); }
[a-zA-Z]+                                { printf("WORD: %s\n", yytext); }
[ \t\n]                                  { /* skip */ }
.                                        { /* ignore */ }

%%

int main() {
    yylex();
    return 0;
}

int yywrap() { return 1; }
