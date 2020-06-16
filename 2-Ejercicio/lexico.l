%{
    #include "sintactico.tab.h"
    #include "sintactico.tab.c"
    int yyparse();
%}

%%
[a-zA-Z0-9_\-]*  { return  (CONTENIDO);}
\(              { return  (ABIERTO); }
\)              { return  (CERRADO); }
%%
int yywrap(){}
void main(){
    yyparse();
    yylex();
}