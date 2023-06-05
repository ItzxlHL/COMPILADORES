/*** Seccion de definicion de una variable que puede ser accedida
desde yylex() y desde main() ***/

%{
int contador = 0;
%}

/*** Sección de 3 reglas ***/
/*** Regla uno: analiza las mayusculas ***/
/*** Regla dos: analiza cualquier carácter menos los saltos de linea ***/
/*** Regla tres: No registra mas carácteres despues de un enter ***/

%%
[A-Z] {printf("%s Letra mayúscula\n",yytext);
    contador++;}
.   {printf("%s No es una letra mayúscula\n",yytext);}
\n {return 0;}
%%

/*** Sección del código que imprime el número de mayúsculas y regresa las entradas ***/

int yywrap(){}
int main(){

    //Explicación: 
    //yywrap - envuelve la secion de reglas anterior
    /* yyin - toma el puntero del archivo que contiene la entrada */
    /* yylex() - Es la funcion principal de Flex que ejecuta la seccion de reglas */
    //yytext es el buffer del texto

    //Descomenta las siguientes lineas para tomar como entrada un archivo 

    //FILE *fp;
    //char nombrearchivo[50];
    //printf("Nombre del archivo: \n");
    //scanf("%s",nombrearchivo);
    //fp = fopen(nombrearchivo,"r");
    //yyin = fp;

    yylex();
    printf("\nNúmero de mayúsculas " 
    "en la entrada dada - %d\n",contador);
    return 0;
}   

*/Sale del programa dando enter*/