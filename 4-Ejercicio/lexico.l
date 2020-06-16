%{
    #include "sintactico.tab.h"
    #include "sintactico.tab.c"
    int yyparse();
%}

%%
[a-zA-Z0-9_\-\ ]*  {return(CONTENIDO);}
:                 {return (DOS_PUNTOS);}
[\n]              {return (SALTO_LINEA);}
%%

int yywrap(){}
void main(){
    printf("Punto y coma al final\n");
    yyparse();
    yylex();
}