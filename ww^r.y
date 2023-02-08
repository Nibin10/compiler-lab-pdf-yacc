%{
#include<stdio.h>
%}
%token A B C NL X
%%
P : S NL {printf("Valid");
 return 0;}
S : A S A | B S B | C
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
