%{
    #include<stdio.h>
    int yylex();
    int yyerror(char*s);
%}

%token CONTENIDO
%token DOS_PUNTOS
%token SALTO_LINEA

%%
oracion: CONTENIDO DOS_PUNTOS SALTO_LINEA {printf("Termina en dos puntos!\n");};
%%
int yyerror(char*s){
    printf("ERROR: %s \n",s);
    return 1;
}