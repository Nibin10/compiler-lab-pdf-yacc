%{
#include"y.tab.h"
%}
%%
[A-Za-z] {return A;}
[0-9] {return B;}
\n {return NL;}
. {return X;}
%%
int yywrap()
{
return 1;
}
