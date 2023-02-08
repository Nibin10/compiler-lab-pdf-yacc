%{
#include"y.tab.h"
#include<stdio.h>
%}
%%
[aA] {return A;}
[bB] {return B;}
[cC] {return C;}
\n {return NL;}
. {return X;}
%%
int yywrap()
{
return 1;
}
