%{
#include<stdio.h>
int line = 0,word=0,ch=0;
%}

%%
[a-z|A-Z|0-9]  {ch++;}
" " {word++;}
"\n" {line++,word++;}
. {}
%%

int main(int argc,char *argv[]) {
    yylex();
    printf("Line count: %d\n", line);
    printf("Word count: %d\n", word);
    printf("Character count: %d\n", ch);
    return 0;
}