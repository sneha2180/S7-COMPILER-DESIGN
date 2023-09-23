%{
#include<stdio.h>
int vowels = 0,cons=0;
%}

%%
[aeiou|AEIOU]  {vowels++;}
[a-z|A-Z] {cons++;}
%%

int main(int argc,char *argv[]) {
    yylex();
    printf("Vowels: %d\n", vowels);
    printf("Constants: %d\n", cons);
    return 0;
}