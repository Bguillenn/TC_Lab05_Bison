%{
    #include<stdio.h>
    int yylex();
    int yyerror(char*s);
%}
%token CONTENIDO
%token ABIERTO
%token CERRADO
%%
parentesis: ABIERTO CONTENIDO CERRADO {printf("Parentesis abiertos y cerrados!");}
;
%%
int yyerror(char*s){
    printf("%s \n",s);
    return 1;
}