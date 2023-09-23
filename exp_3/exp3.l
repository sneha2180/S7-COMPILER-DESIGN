%{
#include<stdio.h>
%}

%%
[\n \t ' ']  {};
%%

int main(int argc,char *argv[]) {
    yyin = fopen("file.txt", "r");
    yylex();
}