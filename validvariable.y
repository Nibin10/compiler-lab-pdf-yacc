%{
#include<stdio.h>
%}
%token A B NL X
%%
P : S NL {printf("Valid");
  return 0;}
S : A F
F : A F | B F | A | B
%%
int main()
{
printf("enter the string:");
yyparse();
}
int yyerror()
{
printf("Invalid");
}
