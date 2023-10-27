%{
#include<stdio.h>
#include<stdlib.h>
%}
%token NUMBER ALPHA
%left '+' '-'
%left '*' '/'
%left '('')'
%%
expr : '+'expr
	|expr '+' expr
	|expr '-' expr
	|expr '*' expr
	|expr '/' expr
	|'('expr')'
	|NUMBER
	|ALPHA
%%
int main()
{
printf("enter an arithmetic expression\n");
yyparse();
printf("arithmetic expression is valid\n");
return 0;
}
int yyerror(char * msg)
{
printf("\n%s",msg);
printf("\n arithmetic expression is invalid ");
exit(0);
}	
