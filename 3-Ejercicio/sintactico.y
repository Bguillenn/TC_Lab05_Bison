%{
    #include<stdio.h>
    int yylex();
    int yyerror(char*s);
%}
%token NOTA
%%
combinacion: NOTA NOTA NOTA NOTA NOTA   {printf("Combinacion de notas aceptada !");};
%%
int yyerror(char*s){
    printf("ERROR: %s \n",s);
    return 1;
}