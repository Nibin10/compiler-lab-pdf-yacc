%{
#include"y.tab.h"
%}
%%
[A-Za-z_] {return A;}
[0-9] {return B;}
\n {return NL;}
. {return X;}
%%
int yywrap()
{
return 1;
}
