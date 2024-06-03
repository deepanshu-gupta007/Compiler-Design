%{
#include<stdio.h>
%}
%%
([a-zA-Z][0-9])+|[a-zA-Z]* {printf("Valid Identifier\n");}   
^[0-9]+ {printf("Invalid Identifier\n");}
.|\n; 
%%
int yywrap(){return 1;}
int main()
{
yylex();						
return 0;
}

