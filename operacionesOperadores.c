#include <stdio.h>

int main()
{
    int i=8, j=5;
    float x=0.005, y=-0.01;
    char c = 'c', d='d';

    printf("a)\n");
    printf ("(3*i-2*j) % (2*d-c) = %i\n", (3 * i - 2 * j) % (2 * d - c));
    
    printf("b)\n");
    printf ("2 * ((i/5) + (4 *(j-3)) % (i+j-2)) = %i\n", 2 * ((i/5) + (4 *(j-3)) % (i+j-2)));
    
    printf("c)\n");
    printf ("(i-3*j) % (c+2*d) / (x-y) = %f\n", (i-3*j) % (c+2*d) / (x-y));
    
    printf("d)\n");
    printf ("-(i+j) = %i\n", -(i+j));
    
    printf("e)\n");
    printf ("++i = %i\n", ++i);
    
    printf("f)\n");
    printf ("i++ = %i\n", i++);
    
    printf("g)\n");
    printf ("-j = %i\n", -j);
    
    printf("h)\n");
    printf ("++x = %f\n", ++x);
    
    printf("i)\n");
    printf ("y- = %f\n", -y);

    printf("j)\n");
    printf ("i<=j = %i\n", i<=j);

    printf("k)\n");
    printf ("c>d = %i\n", c>d);
    
    printf("l)\n");
    printf ("x>=0 = %i\n", x>=0);
    
    printf("m)\n");
    printf ("x<y = %i\n", x<y);
    
    //printf("n)\n");
    //printf ("x<y = %i\n", x<y);
    
    printf("o)\n");
    printf ("c==99 = %i\n", c==99);
    
    printf("p)\n");
    printf ("5 * (i+j) > 'c' = %i\n", 5 * (i+j) > 'c');
    
    return 0;
    
}
