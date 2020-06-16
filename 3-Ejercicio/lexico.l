%{
    #include "sintactico.tab.h"
    #include "sintactico.tab.c"
    int yyparse();
%}

%%
(Do|DO|do|Re|RE|re|Mi|MI|mi|Fa|FA|fa|Sol|SOL|sol|La|LA|la|Si|SI|si) {return(NOTA);}
%%

int yywrap(){}

void main(){
    printf("Combinacion de 5 notas musicales!\n\n");
    yyparse();
    yylex();
}