%{
#include<stdio.h>
%}
%token A B  NL X
%%
P : S NL {printf("Valid");
 return 0;}
S : A S B B | A B B B
%%
void main()
{
printf("enter the expression:");
yyparse();
}
void yyerror()
{
printf("Invalid");
}
