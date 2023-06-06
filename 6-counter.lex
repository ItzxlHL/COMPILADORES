/* Declara dos contadores, uno para el numero de lineas y otro para el número de carácteres */
%{
    int noLineas = 0;
    int noCarac = 0;
%}

/***Regla 1: cuenta el número de líneas
    Regla 2: cuenta el número de carácteres
    Regla 3: especifica cuando se detiene la entrada***/
%%
\n   ++noLineas;
.    ++noCarac;
end  return 0;
%%

/***Seccion codigo de usuario***/
int yywrap(){}
int main(int argc, char **argv)
{
    yylex();
    printf("Numero de lineas = %d, numero de caracteres = %d\n",
            noLineas, noCarac);

    return 0;
}
/*Sale del programa escribiendo end*/
