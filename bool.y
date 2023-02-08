%{
#include<stdio.h>

%}
%token NUM
%left '&' '|' 'x'
%right '!'
%%
S : E   {printf("value:%d\n",$$);
   return 0;
  }
E :     '!' E  {$$=!$2;} 
  | E '&' E   {$$=$1&$3;}
  | E '|' E   {$$=$1|$3;}
  | E 'x' E    {$$=($1&(!$3))|((!$1)&$3);}
  | '(' E ')'  {$$=$2;}
  | NUM             {$$=$1;}
%%
void main()
{
printf("Enter the Expression");
yyparse();
}

void yyerror()
{
printf("invalid expression");

}
