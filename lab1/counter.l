%{
#include <stdio.h>
int vowels = 0, consonants = 0, digits = 0;
%}

%%

[aeiouAEIOU]        { vowels++; }
[a-zA-Z]            { consonants++; }
[0-9]               { digits++; }
[ \t\n]             { /* skip whitespace */ }
.                   { /* ignore everything else */ }

%%

int main() {
    yylex();
    printf("Vowels:     %d\n", vowels);
    printf("Consonants: %d\n", consonants);
    printf("Digits:     %d\n", digits);
    return 0;
}

int yywrap() { return 1; }
