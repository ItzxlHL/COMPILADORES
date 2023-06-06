%{
    #include<stdio.h>
%}

digito [0-9]
numero {digito}+
letra [a-zA-Z]
identificador {letra}+{numero}+
saltoLinea \n
espacioBlanco [\t]+
simbolos [@|#|&]+
condicional [if|then|else|for]+

%option noyywrap

%%
{digito} {printf("Encontro un digito: %s\n", yytext);}
{simbolos} {printf("Un carácter especial encontrado: %s\n", yytext);}
{letra} {printf("Letra encontrada: %s\n", yytext);}
{identificador} {printf("Identificador encontrado: %s\n", yytext);}
{condicional} {printf("Palabra reservada: %s\n", yytext);}
. {}
%%

int main(void)
{
    yylex();
    return 0;
}

/*Sale del programa con Ctrl + C*/
