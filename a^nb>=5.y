%{
#include<stdio.h>
%}
%token A B  NL X
%%
P : S NL {printf("Valid");
 return 0;}
S : A A A A Q B 
Q : A Q | A
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
