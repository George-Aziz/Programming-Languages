%{
#include <stdio.h>
#include "y.tab.h"
%}
NUMBER [0-9]+
%%
-[0-9]+    yylval = atoi(yytext); return NEGNUMBER;
[0-9]+    yylval = atoi(yytext); return NUMBER;
,         return COMMA;    /* Separator for Array */
\[        return SBRACK; /* Ignore Start Bracket */
\]        return LBRACK; /* Ignore Last Bracket  */
\n        ; /* Ignore end of line   */ 
[ \t]+    ; /* Ignore whitepsace    */
.         ; /*  Ignore Full Stop    */ 
%%
