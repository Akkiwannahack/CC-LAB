Akshat Digalwar
24070521003
Sem v Sec A



%{
#include "y.tab.h"
%}

%%
[0-9]+ {return NUM;}
[+\-*/] {return yytext[0];}
[ \t] {return 0;}
\n {}
%%

int yywrap() {
    return 1;
}